const mysql = require('mysql');

const pool = mysql.createPool({
    connectionLimit: 50,
    user:'root',
    password: 'Nateschool29!',
    database:'mydb',
    host:'127.0.0.1',
    port:'3306'
});

let cardealership={};

cardealership.all = () =>{
    return new Promise((resolve, reject) => {
        pool.query(`SELECT * FROM customer`, (err,results)=>{
            if(err){
                return reject(err);
            }
            return resolve(results);
        });
    });
};

module.exports=cardealership;