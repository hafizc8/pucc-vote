var express = require('express');
var app = express();
var server = require('http').createServer(app);
var io = require('socket.io').listen(server);
var mysql = require('mysql');
var session = require('express-session');
var bodyParser = require('body-parser');
var path = require('path');

var con = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "root",
    port: 8889,
    database: "dbvote"
});

app.use(express.static(__dirname+'/public'));
app.use(session({
	secret: 'secret',
	resave: true,
	saveUninitialized: true
}));
app.use(bodyParser.urlencoded({extended : true}));
app.use(bodyParser.json());


connections = [];

server.listen(3000);
console.log("Server is running..");

process.setMaxListeners(0);

// routing index
app.get('/', function(req, res) {
    if (req.session.loggedin) {
        let username = req.session.username;
        let nama = req.session.nama;

        /**
         * Fungsi socket io
         */
        io.sockets.on('connection', async function(socket) {
            // connections.push(socket);
            // console.log("Terhubung: %s sockets connected", connections.length);

            // pada saat awal connect, ambil data dari database
            // con.connect(async function(err) {
                // if (err) throw err;
                // console.log("session username: " + username);
                let respon = await init(username);
                // console.log(respon);

                // lempar data ke client
                io.sockets.emit('initial-data', respon);
            // });

            // bila disconnect
            // socket.on('disconnect', function(data) {
                // connections.splice(connections.indexOf(socket), 1);
                // console.log("Terputus: %s sockets connected", connections.length);
            // })

            // on vote
            socket.on('sdvote', function(data, fn) {
                // console.log("data masuk..");
                // masukkan data ke database
                // con.connect(function(err) {
                    // cek dulu apakah user sudah vote
                    con.query("SELECT COUNT(*) AS checkvt FROM vote_transaction WHERE username = ?", [username], function (err, result, fields){
                        // console.log(result);
                        if (result[0].checkvt == 0) {
                            con.query("UPDATE vote SET jumlah = jumlah + 1 WHERE no_paslon = ?", [data.vote], function (err, result) {
                                // console.log("Melakukan proses pemilihan (50%)...");

                                con.query("INSERT INTO vote_transaction VALUES (?, ?, ?, now())", [username, data.vote, data.masukansaran], function (err, result) {
                                    // console.log("Melakukan proses pemilihan (100%)...");
                                    // console.log("Hasil insert vote transaction : ");
                                    // console.log(result);

                                    data.nama = nama;
                                    data.tglVoted = getTanggal();
                                    // console.log(data);
                                    // broadcast ke semua client
                                    io.sockets.emit('new-record', data);
                                });
                            });
    
                        }
                    });
                // });

                fn(true);
            });
        });

        res.sendFile(__dirname + '/index.html');
	} else {
        res.sendFile(__dirname + '/login.html');
	}
});

app.get('/error', function(request, response) {
    response.sendFile(__dirname + '/login-failed.html');
    // response.end();
});

app.get('/logout', function(request, response) {
    request.session.destroy();
    response.redirect('/');
    // response.end();
});

// fungsi memanggil data vote
function getDataVote(){
    return new Promise(resolve => {
        con.query('SELECT * FROM vote', function (err, result, fields){
            resolve(result);
        });
    });
}

// fungsi memanggil statistik anggota
function getStatAnggota(){
    return new Promise(resolve => {
        con.query('SELECT COUNT(*) as count FROM ms_anggota', function (err, result, fields){
            resolve(result);
        });
    });
}

// fungsi memanggil statistik anggota sudah vote
function getVoteTransaction(){
    return new Promise(resolve => {
        con.query('SELECT COUNT(*) as count FROM vote_transaction', function (err, result, fields){
            resolve(result);
        });
    });
}

// fungsi cek
function getHasVoted(username){
    return new Promise(resolve => {
        con.query('SELECT username FROM vote_transaction WHERE username = ?', [username], function (err, result, fields){
            resolve((result.length > 0) ? true : false);
        });
    });
}

// fungsi get masukan dan saran
function getMasukandanSaran(){
    return new Promise(resolve => {
        con.query('SELECT agt.nama, masukan, tgl_aksi FROM vote_transaction vt JOIN ms_anggota agt ON agt.email = vt.username ORDER BY vt.tgl_aksi DESC', function (err, result, fields){
            resolve(result);
        });
    });
}

function getTanggal() {
    var date = new Date();
    var tahun = date.getFullYear();
    var bulan = date.getMonth();
    var tanggal = date.getDate();
    var hari = date.getDay();
    var jam = date.getHours();
    var menit = date.getMinutes();
    var detik = date.getSeconds();
    switch(hari) {
        case 0: hari = "Minggu"; break;
        case 1: hari = "Senin"; break;
        case 2: hari = "Selasa"; break;
        case 3: hari = "Rabu"; break;
        case 4: hari = "Kamis"; break;
        case 5: hari = "Jum'at"; break;
        case 6: hari = "Sabtu"; break;
    }
    switch(bulan) {
        case 0: bulan = "Januari"; break;
        case 1: bulan = "Februari"; break;
        case 2: bulan = "Maret"; break;
        case 3: bulan = "April"; break;
        case 4: bulan = "Mei"; break;
        case 5: bulan = "Juni"; break;
        case 6: bulan = "Juli"; break;
        case 7: bulan = "Agustus"; break;
        case 8: bulan = "September"; break;
        case 9: bulan = "Oktober"; break;
        case 10: bulan = "November"; break;
        case 11: bulan = "Desember"; break;
    }
    var tampilTanggal = hari + ", " + tanggal + " " + bulan + " " + tahun;
    var tampilWaktu = " (" + jam + ":" + menit + ":" + detik + ")";
    // console.log(tampilTanggal);
    // console.log(tampilWaktu);
    return tampilTanggal+tampilWaktu;
}

const init = async(username) => {
    let resultJson = {};
    resultJson['data_vote'] = await getDataVote();
    resultJson['stat_anggota'] = await getStatAnggota();
    resultJson['anggota_voted'] = await getVoteTransaction();
    resultJson['has_voted'] = await getHasVoted(username);
    resultJson['masukan_saran'] = await getMasukandanSaran();

    return resultJson;
}

app.post('/auth', function(request, response) {
	var username = request.body.username;
	var password = request.body.password;
	if (username && password) {
		con.query('SELECT nama,password FROM ms_anggota WHERE email = ? or username = ?', [username, username], function(error, results, fields) {
			if (results.length > 0) {
                // verify password
                const PasswordHash = require('node-phpass').PasswordHash;
                const len = 8;
                const portable = true;
                const phpversion = 7; 
                const hasher = new PasswordHash(len, portable, phpversion);
                const checkPass = hasher.CheckPassword(password, results[0].password);

                // console.log(checkPass ? 'PSW OK' : 'PSW INVALID');
                if (checkPass) {
                    request.session.loggedin = true;
                    request.session.username = username;
                    request.session.nama = results[0].nama;
                    response.redirect('/');
                    response.end();
                } else {
                    // password salah
                    // response.send('password salah');
                    response.redirect('/error');
                    response.end();
                }
			} else {
                // user tidak ditemukan
                // response.send('user tidak ada');
                response.redirect('/error');
                response.end();
			}
		});
	} else {
        // response.send('username atau password kosong');
        response.redirect('/error');
        response.end();
	}
});


/**
 * Task yg belum:
 * 1. Handle nilai total anggota sudah vote (on load & on listen data)
 * 2. Handle nilai total anggota belum vote (on load & on listen data)
 * 3. List masukan dan saran dibuatkan live (on load & on listen data)
 * 4. Logout
 */