using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

using CapaEntidades;
using CapaLogicaNegocio;

namespace CapaPresentacion
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["UserSessionId"] = null;
        }

        protected void Login_Authenticate(object sender, AuthenticateEventArgs e)
        {
            bool Autenticado = false;
            Autenticado = LoginCorrecto(Login1.UserName, Login1.Password);
            e.Authenticated = Autenticado;
            if (Autenticado){

                Session.Clear();
                Session.RemoveAll();

                Usuario usuario = EncontrarUsuario(Login1.UserName,Login1.Password);
                Session["Usuario"] = Login1.UserName;
                Session["Contrasena"] = Login1.Password;
                Session["Image"] = Convert.ToString(usuario.UsrImage);
                Session["id"] = Convert.ToString(EncontrarRut(Login1.UserName,Login1.Password));
                //String rut = Convert.ToString(Session["id"]);
                Response.Redirect("PanelGeneral.aspx");
            }
            else
            {
                Response.Write("<script>alert('Usuarios Incorrecto')</script>");
            }
        }
        private bool LoginCorrecto(string Usuario, string Contrasena)
        {
             Usuario objUsuario = UsuarioLN.getInstance().AccesoSistema(Login1.UserName, Login1.Password);
             if (objUsuario != null)
             {
                 return true;
                // Response.Write("<script>alert('Usuarios Correcto')</script>");
             }
             else
             {
                 return false;
                // Response.Write("<script>alert('Usuarios Incorrecto')</script>");
             } 
           
        } 
        /*
        private String recuperarNombre()
        {

            String password = Convert.ToString(Session["Contraseña"]);
            String user = Convert.ToString(Session["Usuario"]);
            String query = "SELECT * FROM Usuario WHERE Usuario =" + user + "AND Contrasena = " + password;

            String conex = ConfigurationManager.ConnectionStrings["MyConnection"].ConnectionString
            SqlConnection connection = new SqlConnection(conex);

            SqlCommand execute = new SqlCommand(query,connection);
            connection.Open();

            execute.Parameters.AddWithValue('');




        }*/

        private Usuario EncontrarUsuario(string Usuario, string Contrasena)
        {
            Usuario objUsuario = UsuarioLN.getInstance().AccesoSistema(Usuario, Contrasena);
            if (objUsuario != null)
            {
                return objUsuario;
               
            }
            else
            {
                return null;
                
            }
        }

        private String EncontrarRut(string Usuario, string Contrasena)
        {

            Usuario objUsuario = UsuarioLN.getInstance().AccesoSistema(Usuario, Contrasena);
            if (objUsuario != null)
            {
                return objUsuario.Rut;

            }
            else
            {
                return null;

            }


        }

    }   
}