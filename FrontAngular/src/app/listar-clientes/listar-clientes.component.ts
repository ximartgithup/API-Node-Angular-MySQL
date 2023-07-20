import { Component,OnInit } from '@angular/core';
import { Router } from '@angular/router';
//-- importar el servicio desde aqui
import {ClienteService} from 'src/app/servicios/cliente.service';
@Component({
  selector: 'app-listar-clientes',
  templateUrl: './listar-clientes.component.html',
  styleUrls: ['./listar-clientes.component.css']
})
export class ListarClientesComponent implements OnInit {
clientes :any; //variable para capturar los clientes
//--llamar al servicio para traer los registros
constructor(private clienteservice: ClienteService,private ruta:Router){}

ngOnInit(): void {
  this.showAll();
}
showAll()
{
  return this.clienteservice.getAll().subscribe(result => this.clientes = result);
}
//--- recibe el id a eliminar y llama a la API
eliminarCliente(id:string)
{
  console.log("Preparado para eliminar el "+id);
  return this.clienteservice.deleteCliente(id).subscribe(
    (datos:any) =>{
      if(datos['status'])
      {
      alert(datos['status']);
      }
      //this.showAll();
    
    },
    (error) => {console.log('Ocurrió un error ',error)}
  )
}
//--- llamar el componente Crear Cliente
nuevoCliente()
{
  this.ruta.navigate(['/crear-cliente/']);
}
//---- edita el cliente
editarCliente(id:string)
{
   this.ruta.navigate(['/actualizar-cliente/'+id]);
}

}//endClass
