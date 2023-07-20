import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { CrearClienteComponent } from './crear-cliente/crear-cliente.component';
import { ListarClientesComponent } from './listar-clientes/listar-clientes.component';
import { ActualizarClienteComponent } from './actualizar-cliente/actualizar-cliente.component';

const routes: Routes = [
  {path:'',pathMatch:'full',redirectTo:'listar-cliente'},
  {path:'listar-cliente',component:ListarClientesComponent},
  {path:'crear-cliente',component:CrearClienteComponent},
  {path:'actualizar-cliente/:id',component:ActualizarClienteComponent},
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
