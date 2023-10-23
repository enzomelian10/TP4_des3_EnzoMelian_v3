using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP4_des3_EnzoMelian
{
    public partial class RegContCRUD : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnCDAtras_Click(object sender, EventArgs e)
        {
            Response.Redirect("Menu.aspx");
        }

        protected void BtnAgregarRegistroContable_Click(object sender, EventArgs e)
        {
            int result = SqlDataSource3.Insert();
            if (result != 0)
            {
                lblAgregarRegCont.Text = "Se ha agregado " + result.ToString() + " registros";
                tBoxMontoA.Text = "";
                DDLtipo.SelectedValue = null;
            }
            else
            {
                lblAgregarRegCont.Text = " Noo se agregaron registros";
            }
        }

        protected void lBoxRegContMME_SelectedIndexChanged(object sender, EventArgs e)
        {

            SqlDataSource3.DataSourceMode = SqlDataSourceMode.DataReader;
            SqlDataReader reader = (SqlDataReader)SqlDataSource3.Select(DataSourceSelectArguments.Empty);
            if (reader.Read())
            {
                tBoxCuentaMME.Text = reader["idCuenta"].ToString();
                tBoxMontoMME.Text = reader["monto"].ToString();
                DDLtipo.SelectedValue = reader["tipo"].ToString();
            }
        }

        protected void btnModificarRegCont_Click(object sender, EventArgs e)
        {
            SqlDataSource3.UpdateParameters["id"].DefaultValue = lBoxRegContMME.SelectedValue;
            SqlDataSource3.UpdateParameters["idCuenta"].DefaultValue = tBoxCuentaMME.Text;
            SqlDataSource3.UpdateParameters["monto"].DefaultValue = tBoxMontoMME.Text;
            SqlDataSource3.UpdateParameters["tipo"].DefaultValue = DDLtipoMME.SelectedValue;
            
            int result = SqlDataSource3.Update();
            if (result != 0)
            {
                lblModElim1.Text = "Se ha modificado " + result.ToString() + " registros";
                tBoxCuentaMME.Text = "";
                tBoxMontoMME.Text = "";
                DDLtipo.SelectedValue = null;
            }
            else
            {
                lblModElim1.Text = " No se modificado los elementos.";
            }
        }

        protected void btnEliminarRegCont_Click(object sender, EventArgs e)
        {
            int result = SqlDataSource3.Delete();
            if (result != 0)
            {
                lblModElim1.Text = "Se ha eliminado " + result.ToString() + " registros";
                tBoxCuentaMME.Text = "";
                tBoxMontoMME.Text = "";
                DDLtipo.SelectedValue = null;
            }
            else
            {
                lblModElim1.Text = "No se eliminaron los elementos.";
            }
        }
    }
}