<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="GestionUsuarios.aspx.cs" Inherits="CapaPresentacion.GestionUsuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
        <br />
        <h2 style="text-align: center">REGISTRO DE USUARIOS</h2>
    </section>
    <section class="content">
        <div class="row">
            <div class="col-md-6 col-md-offset-3">
                <div class="box box-primary">
                    <div class="box-body">

                        <div class="form-group">
                            <label>RUT</label>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="txtRut" runat="server" Text="" CssClass="form-control" placeholder="Sin puntos ni guión"></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <label>NOMBRES</label>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="txtNombre" runat="server" Text="" CssClass="form-control" placeholder="Ej: María"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>APELLIDOS</label></div>
                        <div class="form-group">
                            <asp:TextBox ID="txtApellido" runat="server" Text="" CssClass="form-control" placeholder="Ej: Fernández"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>USUARIO</label>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="txtUsuario" runat="server" Text="" CssClass="form-control" placeholder="Usuario"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>CONTRASEÑA</label>
                        </div>
                        <div class="form-group">
                             <asp:TextBox ID="txtContrasena" runat="server" Text="" CssClass="form-control" type="password"  placeholder="Password"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>E-MAIL</label>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" type="email" placeholder="Ej: nombre@gmail.cl"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>PERFIL</label>
                        </div>                        
                        <div class="form-group">
                            <asp:DropDownList ID="ddlPerfil" runat="server" CssClass="form-control">               
                            </asp:DropDownList>
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

        <br />
    </section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" runat="server">
</asp:Content>
