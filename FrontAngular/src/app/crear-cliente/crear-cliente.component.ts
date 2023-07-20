import { Component } from '@angular/core';
import { ClienteService } from '../servicios/cliente.service';
import { Cliente } from '../model/Cliente';
import { Router } from '@angular/router';

@Component({
  selector: 'app-crear-cliente',
  templateUrl: './crear-cliente.component.html',
  styleUrls: ['./crear-cliente.component.css']
})
export class CrearClienteComponent {
  cliente : Cliente ={
    id:0,
    nombres: '',
    apellidos: '',
    direccion: '',
    telefono: '',
    email: ''
  };

  constructor(private servicio:ClienteService, private ruta:Router){}
  //----- metdo para llamar el guardar 
  guardarCliente()
  {
    console.log('guardando Cliente : ',this.cliente);
    this.servicio.saveCliente(this.cliente).subscribe(
      (datos:any)=> {alert(datos['status'])},
      (error)=> {console.log(error)}
    )
  }
  //--- envvia para el modulo listarCliente
  listarCliente()
  {
    this.ruta.navigate(['/listar-cliente/']);
  }

  }//EndClass


