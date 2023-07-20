//-Las funciones del controlador para la tabla cliente
//conexión con la base de datos​
const conexion = require('../config/conexion');
//------------- realiza los método para cada operaciones​
const express = require("express");
const ruta = express();
// para capturar los parametros​
const bodyParser = require('body-parser');
ruta.use(bodyParser.json())  
//-------------------------------​
//http://localhost:3300/
ruta.get('/', function(req, res) {
    res.json({ mensaje: '¡estoy en Index Cliente!' })  
  })
//------- getcliente  ---------------------​
//http://localhost:3300/cliente
  ruta.get('/cliente', function(req, res) {
  //res.json({ mensaje: '¡Lista de clientes!' })  ​
  let sql="select * from clientes order by id"
  conexion.query(sql,(err,rows)=>{
      if(err) throw err;
      else{
          res.json(rows)
      }
  })
})
//------- getcliente by Id  ---------------------​
//http://localhost:3300/5
ruta.get('/cliente/:id', function(req, res) {
    conexion.query("select * from clientes where id = ?", [req.params.id],(err,rows)=>{
        if(err) throw err;
        else{
            res.json(rows)
        }
    })
  })
  //---------- post cliente guardar------------------------​
ruta.post('/cliente', function(req, res) {
   // res.json({ mensaje: '¡Post de cliente para guardar!' })  
   let sql = "insert into  clientes set ?"
   console.log('Registro recibido: ',req.body);
    let poststr = {
        nombres : req.body.nombres,
        apellidos: req.body.apellidos,
        direccion: req.body.direccion,
        telefono: req.body.telefono,
        email: req.body.email
       }
       conexion.query(sql, poststr, function (error, results) {
        if (error) throw error;
        if (results.affectedRows) {
         res.json({status: 'Registro guardado'})
       }
       else
         res.json({status: 'No se pudo guardar'})
      });  
  })

  //------- deletetcliente  ---------------------​
  ruta.delete('/cliente/:id', function(req, res) {
    let sql ="delete from clientes where id = ?"
    conexion.query(sql, [req.params.id], function (error, results) {
       if (error) throw error;
       if (results.affectedRows) {
         res.json({status: 'Registro eliminado'})
       }
       else
         res.json({status: 'No se pudo eliminar'})
     }); 
  })
  //------- actualizarcliente  ---------------------​
  ruta.put('/cliente', function(req, res) {
    let sql = "update clientes set nombres= ?,apellidos = ?,direccion =?, telefono = ?,email= ? where id = ?"
    conexion.query(sql, [req.body.nombres,req.body.apellidos,req.body.direccion,req.body.telefono,req.body.email,req.body.id], function (error, results) {
       if (error) throw error;
       if (results.affectedRows) {
        res.json({status: 'Registro actualizado'})
      }
      else
        res.json({status: 'No se pudo actualizar'})
     });
  })
  module.exports = ruta;