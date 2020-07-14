const express = require("express");
const Router = express.Router();
const mysqlconnection = require('../connection');



//routes
Router.get("/", (req, res) => {
    mysqlconnection.query('SELECT * FROM authors', (err,rows) => {
        if(err) throw err;
      
        console.log('Data received from Db:');
        console.log(rows);
        res.send(rows)


rows.forEach( (row) => {
    console.log(`${row.name} lives in ${row.city}`);
  });
  

      });
      
   


    // res.send("Hello World!");
  });


  Router.get("/create", (req, res) => {
   
      
      const author = { name: 'Craig Buckler', city: 'Exmouth' };
      mysqlconnection.query('INSERT INTO authors SET ?', author, (err, res) => {
  if(err) throw err;

  console.log('Last insert ID:', res.insertId);
});


    // res.send("Hello World!");
  });

  

  module.exports = Router;