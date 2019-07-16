var express = require('express');
var app = express();

app.get('/', function (req, res) {
    res.status(200).send('ok');
});

app.get('/newRoute', function (req, res) {
    res.send("heyy new Route")
})

var server = app.listen(3000, function () {
    var port = server.address().port;
    console.log('Node App listening at port %s', port);
});

module.exports = server;