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

// routing index
app.get('/', function(req, res) {
    if (req.session.loggedin) {
        let username = req.session.username;

        /**
         * Fungsi socket io
         */
        io.sockets.on('connection', async function(socket) {
            connections.push(socket);
            console.log("Terhubung: %s sockets connected", connections.length);

            // pada saat awal connect, ambil data dari database
            // con.connect(async function(err) {
                // if (err) throw err;
                console.log("session username: " + username);
                let respon = await init(username);
                console.log(respon);

                // lempar data ke client
                io.sockets.emit('initial-data', respon);
            // });

            // bila disconnect
            socket.on('disconnect', function(data) {
                connections.splice(connections.indexOf(socket), 1);
                console.log("Terputus: %s sockets connected", connections.length);
            })

            // on vote
            socket.on('sdvote', function(data, fn) {
                // console.log("data masuk..");
                console.log(data)
                // masukkan data ke database
                // con.connect(function(err) {
                    // cek dulu apakah user sudah vote
                    con.query("SELECT COUNT(*) AS checkvt FROM vote_transaction WHERE username = ?", [username], function (err, result, fields){
                        console.log(result);
                        if (result[0].checkvt == 0) {
                            con.query("UPDATE vote SET jumlah = jumlah + 1 WHERE no_paslon = ?", [data.vote], function (err, result) {
                                console.log("Melakukan proses pemilihan (50%)...");

                                con.query("INSERT INTO vote_transaction VALUES (?, ?, ?, now())", [username, data.vote, data.masukansaran], function (err, result) {
                                    console.log("Melakukan proses pemilihan (100%)...");

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

const init = async(username) => {
    let resultJson = {};
    resultJson['data_vote'] = await getDataVote();
    resultJson['stat_anggota'] = await getStatAnggota();
    resultJson['anggota_voted'] = await getVoteTransaction();
    resultJson['has_voted'] = await getHasVoted(username);

    return resultJson;
}

app.post('/auth', function(request, response) {
	var username = request.body.username;
	var password = request.body.password;
	if (username && password) {
		con.query('SELECT * FROM ms_anggota WHERE email = ?', [username], function(error, results, fields) {
			if (results.length > 0) {
                // verify password
                const PasswordHash = require('node-phpass').PasswordHash;
                const len = 8;
                const portable = true;
                const phpversion = 7; 
                const hasher = new PasswordHash(len, portable, phpversion);
                const checkPass = hasher.CheckPassword(password, results[0].password);

                console.log(checkPass ? 'PSW OK' : 'PSW INVALID');
                if (checkPass) {
                    request.session.loggedin = true;
                    request.session.username = username;
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
 */