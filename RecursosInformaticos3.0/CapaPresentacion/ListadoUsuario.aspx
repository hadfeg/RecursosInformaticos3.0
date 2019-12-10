<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ListadoUsuario.aspx.cs" Inherits="CapaPresentacion.ListadoUsuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class ="row">
        <div class = "col-xs-12">
            <div class ="box box-primary">
                <div class ="box-header">
                    <h3 class =" box-title">Lista de Usuarios</h3>
                </div>

                <div class ="box-body table-responsive">
                    <table id ="tbl_usuarios" class ="table table-bordered">                        
                        <thead>
                            <tr>
                                <th>Nombre</th>
                                <th>Rut</th>
                                <th>Apellido</th>
                                <th>Correo</th>
                                <th>Rol</th>
                                <th>Usuario</th>
                            </tr>
                        </thead>
                        <tbody id="tbl_body_table" >
                            <!-- AJAX -->
                        </tbody>                        
                    </table>
                </div>

            </div>
        </div>
    </div>


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" runat="server">
</asp:Content>
