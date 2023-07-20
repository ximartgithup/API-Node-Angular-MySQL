import { Component, OnInit } from '@angular/core';
import { Cliente } from '../model/Cliente';
import { ClienteService } from '../servicios/cliente.service';
import { Router,ActivatedRoute } from '@angular/router';

@Component({
  selector: 'app-actualizar-cliente',
  templateUrl: './actualizar-cliente.component.html',
  styleUrls: ['./actualizar-cliente.component.css']
})
export class ActualizarClienteComponent  implements OnInit{
  cliente : Cliente ={
    id:0,
    nombres: '',
    apellidos: '',
    direccion: '',
    telefono: '',
    email: ''
  };

  constructor(private servicio:ClienteService,private ruta: Router, private activaterouter:ActivatedRoute){}

  ngOnInit(): void {
    let id = this.activaterouter.snapshot.paramMap.get('id');
    if(id)//si viene el id
    {
      this.servicio.getCliente(id).subscribe(
        (resultado:any) =>{
          this.cliente=resultado[0];//formulario
         //console.log("registro completo: ",this.cliente);
        },
        (error) =>{console.log("error ",error)}
      );
    }
  }


  //---- actualizar Cliente llamando la API
  actualizarCliente()
  {
    
    this.servicio.updateCliente(this.cliente).subscribe(
      (res:any) => {
        if(res['status'])
        {
          alert(res['status']);
          this.listarCliente();
        }
      },
      (error) => { console.log("Error generado: ",error)}
    );

  }
  //--- envvia para el modulo listarCliente
  listarCliente()
  {
    this.ruta.navigate(['/listar-cliente/']);
  }

  
}//EndClass
