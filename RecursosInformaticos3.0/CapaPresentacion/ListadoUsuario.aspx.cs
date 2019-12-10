using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Script.Serialization;
using System.Web.Services;
using CapaEntidades;
using CapaLogicaNegocio;

namespace CapaPresentacion
{
    public partial class ListadoUsuarios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        [WebMethod]
        public static List<Usuario> ListarUsuarios()
        {
            List<Usuario> Lista = null;
            try
            {
                Lista = UsuarioLN.getInstance().ListarUsuarios();
            }
            catch (Exception ex)
            {
                Lista = null;
            }
            return Lista;
        }
    }

}