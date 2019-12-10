using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

using CapaEntidades;
using CapaLogicaNegocio;

namespace CapaPresentacion
{
    public partial class GestionUsuarios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegistrar_Click(object sender, EventArgs e) {

            Usuario objUsuario = new Usuario();
            objUsuario = GetEntity();           
            bool rut_valido = validarRut(objUsuario);

            if (rut_valido) {

                bool response = UsuarioLN.getInstance().RegistrarUsuario(objUsuario);

                if (response == true)
                {
                    Response.Write("<script>alert('REGISTRO CORRECTO.')</script>");
                }
                else
                {
                    Response.Write("<script>alert('REGISTRO INCORRECTO.')</script>");
                }
            }else{

                    Response.Write("<script>alert('Rut inválido, por favor intente nuevamente !!!')</script>");

            }
            
        }

        private bool validarRut(Usuario objUser)
        {
            bool validacion = false;
            String rut;
            try
            {
                rut = objUser.Rut.ToUpper();
                rut = rut.Replace(".", "");
                rut = rut.Replace("-", "");
                int rutAux = int.Parse(rut.Substring(0, rut.Length - 1));

                char dv = char.Parse(rut.Substring(rut.Length - 1, 1));

                int m = 0, s = 1;
                for (; rutAux != 0; rutAux /= 10)
                {
                    s = (s + rutAux % 10 * (9 - m++ % 6)) % 11;
                }
                if (dv == (char)(s != 0 ? s + 47 : 75))
                {
                    validacion = true;
                }
            }
            catch (Exception)
            {

            }
            return validacion;
        }

        private Usuario GetEntity()
        {
            //int NivelAcceso = Convert.ToInt32(rbNivelAcceso.SelectedValue);
            Usuario objUsuario = new Usuario();
            objUsuario.User = txtUsuario.Text;
            objUsuario.Name = txtNombre.Text;
            objUsuario.LastName = txtApellido.Text;
            objUsuario.Rut = txtRut.Text;
            objUsuario.Mail = txtEmail.Text;
            objUsuario.Rol = Convert.ToInt32(ddlPerfil.SelectedValue);
            objUsuario.Estado = 1; // Se asume que al ingresar usuario esta Activo.
            objUsuario.Pass = txtContrasena.Text;
            
            if (UsrImg.PostedFile != null) {
                
                String formato = Path.GetExtension(UsrImg.PostedFile.FileName);

                if ( formato != ".jpg" && formato != ".jpeg" && formato != ".png" )
                {
                    LabUploadMessage.Text = ("Estimad@, solo se permiten formatos jpg, jpeg y png, intente nuevamente !!");
                    LabUploadMessage.ForeColor = System.Drawing.Color.Red;
                }
                else
                {
                    LabUploadMessage.Text = ("Formato de imagen correcto !!");
                    LabUploadMessage.ForeColor = System.Drawing.Color.Green;
                }

                String img = Path.GetFileName(UsrImg.PostedFile.FileName);
                UsrImg.SaveAs(Server.MapPath("~/UserImages/") + img);
                objUsuario.UsrImage = "~/UserImages/" + UsrImg.PostedFile.FileName;

            }            
            return objUsuario;
        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {

        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}