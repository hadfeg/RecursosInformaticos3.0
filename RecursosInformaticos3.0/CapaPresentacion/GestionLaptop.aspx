<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="GestionLaptop.aspx.cs" Inherits="CapaPresentacion.GestionarLaptop" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section>
        <br/>
        <h2 style="text-align: center">REGISTRO DE EQUIPOS</h2>
    </section>

    <section class="content">
        <div class="row">
            <div class="col-md-6 col-md-offset-3">
                <div class="box box-primary" style ="width:700px">
                    <div class="box-body">
                        <div class="form-group">
                            
                            <div class="form-group">
                               <label>NOMBRE EQUIPO</label>
                               <label style ="margin-left:300px ">MARCA</label>
                            </div>
                            <div class="form-group" style="width:auto">
                               <asp:TextBox ID="txtNombreEquipo" runat="server" Text="" CssClass="form-control" placeholder="Ej: Juan Perez PC" Width="300px"></asp:TextBox>
                                
                                <asp:TextBox ID="txtMarca" style = "margin-left:315px" runat="server" Text="" CssClass="form-control" placeholder="Ej: HP" width="300px"></asp:TextBox>
                            </div>

                            <div class="form-group">
                                
                            </div>
                            
                                                      
                            <div class="form-group">
                                <label>SERIE</label>
                            </div>

                            <div class="form-group">
                                <asp:TextBox ID="txtSerie" runat="server" Text="" CssClass="form-control" onkeydown="FormatoRut(this,event)" placeholder="Ingrese Serie" Width="320px"></asp:TextBox>
                            </div>

                            <div class="form-group">
                                <label>MODELO</label>
                            </div>

                            <div class="form-group">
                                <asp:TextBox ID="txtModelo" runat="server" Text="" CssClass="form-control" onkeydown="FormatoRut(this,event)" placeholder="Ingrese su rut" Width="320px"></asp:TextBox>
                            </div>
                        
                            <div class="form-group">
                                <label>PROCESADOR</label>
                            </div>
                            <div class="form-group">
                                <asp:TextBox ID="txtProcesador" runat="server" Text="" CssClass="form-control" placeholder="Ej: Intel Core i8" Width="320px"></asp:TextBox>
                            </div>

                            <div class="form-group">
                                <label>RAM</label>
                            </div>
                            <div class="form-group">
                                 <asp:TextBox ID="txtRam" runat="server" Text="" CssClass="form-control" type="text" placeholder="Ej: 16 GB" Width="320px"></asp:TextBox>
                            </div>

                            <div class="form-group">
                                <label>FECHA DE COMPRA</label>
                            </div>
                            <div class="form-group" style = "width:230px" >

                                <asp:TextBox ID="txtFechaCompra" textmode ="Date" runat="server" CssClass="form-control" type="date" Width="226px" placeholder="Ej: nombre@gmail.cl" ></asp:TextBox>
                            </div>

                            <div class="form-group">
                                <label>FECHA DE ENTREGA</label>
                            </div>                        
                            <div class="form-group">
                                <asp:TextBox ID="txtFechaEntrega" textmode ="Date" runat="server" CssClass="form-control" type="date" Width="226px"></asp:TextBox>
                            </div>  

                            <div class="form-group">
                                <label>FECHA DE ULTIMA MANTENCIÓN</label>
                            </div>                        
                            <div class="form-group">
                                <asp:TextBox ID="txtFechaMantencion" textmode ="Date" runat="server" CssClass="form-control" type="date" Width="226px"></asp:TextBox>
                            </div>  

                            <div class="form-group">
                                <label>HDD</label>
                                <br/>
                            </div>
                            <div class="form-group">
                                <asp:DropDownList ID="ddlEstado" runat="server" CssClass="form-control" Width="114px">                                    
                                    <asp:ListItem Text="SI" Value="1" Selected="False"></asp:ListItem>
                                    <asp:ListItem Text="NO" Value="2" Selected="False"></asp:ListItem>
                                </asp:DropDownList>
                            </div>
                          
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

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" runat="server">
</asp:Content>
