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
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session != null) {
                this.UsrImg_Update.ImageUrl = Convert.ToString(Session["Image"]);

                String nombre = Convert.ToString(Session["Usuario"]);
                String pass = Convert.ToString(Session["Contrasena"]);

            }
            else
            {

                

            }         
        }

     

        protected void btnActualizar_Click(object sender, EventArgs e)
        {

        }

        protected void btn_Cancelar_Click(object sender, EventArgs e)
        {

        }
    }
}