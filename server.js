var express = require('express');
var app = express();
var server = require('http').createServer(app);
var io = require('socket.io').listen(server);
var mysql = require('mysql');
var con = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "root",
    port: 8889,
    database: "dbvote"
});

app.use(express.static(__dirname+'/public'));

connections = [];

server.listen(3000);
console.log("Server is running..");

// routing index
app.get('/', function(req, res) {
    res.sendFile(__dirname + '/index.html');
});

// connection
// jika ada yg konek, update jumlah koneksi yg konek
io.sockets.on('connection', function(socket) {
    connections.push(socket);
    console.log("Terhubung: %s sockets connected", connections.length);

    // pada saat awal connect, ambil data dari database
    con.connect(function(err) {
        // if (err) throw err;
        con.query("SELECT * FROM vote", function (err, result, fields) {
            // if (err) throw err;
            console.log(result);
            // lempar data ke client
            io.sockets.emit('initial-data', result);
        });
    });

    // bila disconnect
    socket.on('disconnect', function(data) {
        connections.splice(connections.indexOf(socket), 1);
        console.log("Terputus: %s sockets connected", connections.length);
    })

    // on vote
    socket.on('sdvote', function(data) {
        // masukkan data ke database
        con.connect(function(err) {
            // if (err) throw err;
            var sql = "UPDATE vote SET jumlah = jumlah + 1 WHERE no_paslon = '"+ data +"'";
            con.query(sql, function (err, result) {
                // if (err) throw err;
                console.log("1 record inserted");
            });
        });

        // broadcast ke semua client
        io.sockets.emit('new-record', data);
    });
});