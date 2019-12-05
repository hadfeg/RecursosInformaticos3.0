﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="GestionLaptop.aspx.cs" Inherits="CapaPresentacion.GestionarLaptop" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section>
        <br/>
        <h2 style="text-align: center">REGISTRO DE EQUIPOS</h2>
    </section>

    <section class="content">
        <div class="row">
            <div class="col-md-6">
                <div class="box box-primary">
                    <div class="box-body">

                        <div class="form-group">
                            <label>RUT</label>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="txtRut" onkeydown="FormatoRut(this,event)" runat="server" Text="" CssClass="form-control" placeholder="Ej: 12.345.678-9"></asp:TextBox>
                            <asp:CustomValidator ID="validadorRut" runat="server" ForeColor="Red" ClientValidationFunction="validarRut" ControlToValidate="txtRut" Display="Dynamic" ErrorMessage="RUT/RUN incorrecto, ingrese nuevamente !!!!" SetFocusOnError="True"></asp:CustomValidator>
                        </div>

                        <div class="form-group">
                            <label>NOMBRE EQUIPO</label>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="txtNombreEquipo" runat="server" Text="" CssClass="form-control" placeholder="Ej: Juan Perez PC"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>MARCA</label>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="txtMarca" runat="server" Text="" CssClass="form-control" placeholder="Ej: HP"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>PROCESADOR</label>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="txtProcesador" runat="server" Text="" CssClass="form-control" placeholder="Ej: Intel Core i8"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>HDD</label>                            
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="txtHDD" runat="server" Text="" CssClass="form-control" placeholder="Ej: 100 GB (Solo números)"></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <label>MAC</label>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="txtMac" runat="server" Text="" CssClass="form-control" type="text" placeholder="Ej: F6-40-BB-06-5A-67"></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <label>ESTADO</label>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="txtEstado" runat="server" Text="" CssClass="form-control" type="text" placeholder="Ej: :("></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <label>TEAM VIEWER ID</label>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="txtTeamViewerID" runat="server" Text="" CssClass="form-control" type="text" placeholder="Ej: 1475154154"></asp:TextBox>
                        </div>                        
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="box box-primary">
                    <div class="box-body">
                        <div class="form-group">
                            <label>SERIE</label>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="txtSerie" runat="server" Text="" CssClass="form-control" placeholder="Ingrese Serie"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>MODELO</label>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="txtModelo" runat="server" Text="" CssClass="form-control" placeholder="Ingrese modelo"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>RAM</label>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="txtRam" runat="server" Text="" CssClass="form-control" type="text" placeholder="Ej: 16 GB"></asp:TextBox>
                        </div>   
                        
                        <div class="form-group">
                            <label>SISTEMA OPERATIVO</label>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="txtSO" runat="server" Text="" CssClass="form-control" type="text" placeholder="Ej: Windows 8/Ubuntu 18.04/macOS"></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <label>FECHA DE COMPRA</label>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="txtFechaCompra" TextMode="Date" runat="server" CssClass="form-control" type="date"></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <label>FECHA DE ENTREGA</label>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="txtFechaEntrega" TextMode="Date" runat="server" CssClass="form-control" type="date"></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <label>FECHA DE ULTIMA MANTENCION</label>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="txtFechaMantencion" TextMode="Date" runat="server" CssClass="form-control" type="date"></asp:TextBox>
                        </div>  

                        <div class="form-group">
                            <label>COMENTARIO</label>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="txtComentario" runat="server" Text="" CssClass="form-control" type="text" placeholder="Ej: :("></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <label>OPCIONAL</label>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="txtOpcional" runat="server" Text="" CssClass="form-control" type="text" placeholder="Ej: :("></asp:TextBox>
                        </div>

                    </div>
                </div>
            </div>               
        </div>

        <div align="center">
            <table>
                <tr>
                    <td>
                        <asp:Button ID="btnRegistrar" runat="server" CssClass="btn btn-primary" Width="200px" Text="Registrar" OnClick="btnRegistrar_Click" />
                    </td>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                    <td>
                        <asp:Button ID="btnCancelar" runat="server" CssClass="btn btn-danger" Width="200px" Text="Cancelar" OnClick="btnCancelar_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </section>


    <script language="javascript">

            function validarRut(source,arguments) {

                 var valor = document.getElementById("<%= txtRut.ClientID %>").value;
                 //var valor = arguments.value;
                 //window.alert(valor);
                 valor = valor.replace('.','');
                 valor = valor.replace('.','');
                 valor = valor.replace('-',''); 
		
                 var suma = 0;
                 var iterador =2;
                 var index = 0;
                 var cuerpo = valor.slice(0,-1);             
                 var digito_verificador = valor.slice(-1);        

                 for( i = (cuerpo.length - 1); i >= 0; i-- ) {

                       index = iterador*cuerpo[i];
                       suma = suma + index;
                       iterador++;

                       if(iterador > 7){
                          iterador = 2;
                       }
                  }
				
                  //window.alert(suma);
                  dvEsperado = 11 - (suma % 11);
              
                  if(digito_verificador == "K"){
              
              		    resto = 10;
              
                  }else if (digito_verificador == 0){
              
              		    resto = 11;
              
                  }else{
              
              		    resto = digito_verificador;
                  }
              
			      //window.alert(dvEsperado);
              
                  if(dvEsperado != resto) {                                                                   
                      //window.alert("Rut malo bro :/");
                      arguments.IsValid = false;
                  }else{
                      //window.alert("Rut válido amigazoooooooooooooo");
                      arguments.IsValid = true;
                  }


            }     
	           
              function FormatoRut(rut,event){
                      
                         var valor = rut.value.replace('.','');
                              valor = valor.replace('.','');
                              valor = valor.replace('-',''); // rut sin puntos ni guion.
                      
                              var cuerpo = valor.slice(0,-1);
                              var digito_verificador = valor.slice(-1);

                              var primera_parte;
                              var segunda_parte;
                              var tercera_parte;
                              var rut_salida;

                              if (valor.length == 9) {

                                  primera_parte = valor.substring(0,2);
                                  segunda_parte = valor.substring(2,5);
                                  tercera_parte = valor.substring(5,8);

                              }else if(valor.length == 8){

                                   primera_parte = valor.substring(0,1);
                                   segunda_parte = valor.substring(1,4);
                                   tercera_parte = valor.substring(4,7);

                              }

                              rut_salida = primera_parte + '.' + segunda_parte + '.' + tercera_parte + '-' + digito_verificador;

                              if(event.keyCode == 9){          
                          
                                    if(rut_salida.length == 11 || rut_salida.length == 12){

                                            rut.value = rut_salida;
                                            /*var valido = validarRut();

                                            if(!valido){

                                               Window.alert('Estimado@, ha ingresado un rut inválido, por favor intente nuevamente !!!!');

                                            }
                                            */
                                    }
                              }
              }
    
    </script>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" runat="server">
</asp:Content>
