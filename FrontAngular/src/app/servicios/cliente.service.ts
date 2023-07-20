import { Injectable } from '@angular/core';
import {HttpClient} from '@angular/common/http';
import { Cliente } from '../model/Cliente';
@Injectable({
  providedIn: 'root'
})
export class ClienteService {
 // la ruta de la APi en Node 
 API_URL='http://localhost:3300/';

  constructor(private http:HttpClient) { }
  //--- retornar todos los clientes de la BD consultados
  // por la API
  getAll()
  {
    //http://localhost:3300/cliente/
    return this.http.get(this.API_URL+'cliente/');
  }
  //--- Eliminar un cliente
  deleteCliente(id:string){
    if(confirm("Desea eliminar el cliente con id: "+id))
    {
      console.log("ruta para eliminar",this.API_URL+'cliente/'+id);
      return this.http.delete(this.API_URL+'cliente/'+id);
    }
    return this.getAll();
  }
//---- guarda en la API el cliente
  saveCliente(reg:Cliente)
  {
    return this.http.post(this.API_URL+'cliente/',reg);
  }
  //--- retorne un cliente dado un id
  getCliente(id:string)
  {
    return this.http.get(this.API_URL+'cliente/'+id);
  }
  //------ actualiza en la Bd llamando la API
  updateCliente(reg:Cliente)
  {
    return this.http.put(this.API_URL+'cliente/', reg);
  }

}//end
