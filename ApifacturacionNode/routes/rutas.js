//--- Rutas de acceso a nuestra API y sus métdos CRUD
const route = require("express").Router();
const rutacliente =  require("../controller/clienteController.js");
// Routes​
route.use("/", rutacliente);//http://localhost:3031/
//route.use("/",require("../controller/clienteController"));// o incluirlo asi directamente​
module.exports=route;