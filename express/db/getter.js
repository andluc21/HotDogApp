var mysql = require('mysql');
var pool = mysql.createPool({
    connectionLimit: 50,
    host: 'localhost',
    user: 'root',
    password: 'password',
    database: 'hotdawg'
});

let arr = {};
/*
arr.employeeAll = function() {
    return new Promise((resolve, reject) => {
        pool.query(`SELECT * FROM employee`, (err, results) => {
            if(err) return reject(err);
            return resolve(results);
        });
    });
};
*/
arr.get = function(type) {
    return new Promise((resolve, reject) => {
        //Pass in a table name and get an array(afaik) of that table
        pool.query(`SELECT * FROM ${type}`, (err, results) => {
            if(err) return reject(err);
            return resolve(results);
        });
    });
};

module.exports = arr;
