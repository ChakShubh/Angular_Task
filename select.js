const express = require('express');     //import Express    
const { Client } = require('pg');       //import pg

const connectionString = 'postgres://postgres:Finserv@2023@localhost:5432/mydb2';    //connection with the database defined
//"postgres://YourUserName:YourPassword@localhost:5432/YourDatabase";

//client
const client = new Client({
    connectionString: connectionString
});

client.connect();
var app = express();

app.set('port', process.env.PORT || 4000);  //port 4000 


app.get('/', function (req, res, next) {
res.set('Access-Control-Allow-Origin', 'http://localhost:4200'); 
client.query('SELECT * FROM employee1', function (err, result) {
        if (err) {
           console.log(err);
            res.status(400).send(err);
        }
        res.status(200).send(result.rows);
    });
});


app.listen(4000, function () {
    console.log('Server is running.. on Port 4000');
});