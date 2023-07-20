import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { ListarClientesComponent } from './listar-clientes/listar-clientes.component';
import {HttpClientModule} from '@angular/common/http';
import { CrearClienteComponent } from './crear-cliente/crear-cliente.component';
import { ActualizarClienteComponent } from './actualizar-cliente/actualizar-cliente.component'
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
// para trabajar con http y formularios
@NgModule({
  declarations: [
    AppComponent,
    ListarClientesComponent,
    CrearClienteComponent,
    ActualizarClienteComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    HttpClientModule,
    FormsModule,
    ReactiveFormsModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
