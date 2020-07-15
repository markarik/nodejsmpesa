const mysql = require('mysql');
const connection = mysql.createConnection({
  host: 'localhost',
  user: 'mark',
  password: 'markarik1',
  database: 'nodempesa'
});
connection.connect((err) => {
  if (err) throw err;
  console.log('Connected!');

  
});


module.exports = connection;