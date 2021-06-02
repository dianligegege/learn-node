const mysql = require('mysql');

const connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '880508',
    port: '3306',
    database: 'highlight',
    charset: 'UTF8_GENERAL_CI',
});

module.exports = connection;