using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP4_des3_EnzoMelian
{
    public partial class CuentasCRUD : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnCDAtras_Click(object sender, EventArgs e)
        {
            Response.Redirect("Menu.aspx");
        }

        protected void BtnAgregarCuenta_Click(object sender, EventArgs e)
        {
            int result = SqlDataSource1.Insert();
            if (result != 0)
            {
                lblValidAgregar.Text = "Se ha agregado "+ result.ToString() +" cuenta";
                tBoxDescripcionA.Text = "";
            }
            else
            {
                lblValidAgregar.Text = "No se agrego la cuenta";
            }
        }

        protected void lBoxCuenta_SelectedIndexChanged1(object sender, EventArgs e)
        {

            SqlDataSourceMostrar.DataSourceMode = SqlDataSourceMode.DataReader;
            SqlDataReader reader = (SqlDataReader)SqlDataSourceMostrar.Select(DataSourceSelectArguments.Empty);
            if (reader.Read())
            {
                tboxDescripMME.Text = reader["descripcion"].ToString();
            }
            else
            {
                lblValidAgregar.Text = "problema";
            }
        }

        protected void btnEliminarCuenta_Click(object sender, EventArgs e)
        {
            SqlDataSource1.DeleteParameters["id"].DefaultValue = lBoxCuenta.SelectedValue.ToString();
            int result = SqlDataSource1.Delete();
            if (result != 0)
            {
                lblModElim.Text = "Se ha eliminado " + result.ToString() + " registros";
                tboxDescripMME.Text = "";
            }
            else
            {
                lblModElim.Text = " No se eliminaron los elementos.";
            }
        }

        protected void btnModificarCuenta_Click(object sender, EventArgs e)
        {
            SqlDataSource1.UpdateParameters["id"].DefaultValue = lBoxCuenta.SelectedValue.ToString();
            SqlDataSource1.UpdateParameters["descripcion"].DefaultValue = tboxDescripMME.Text;
            int result = SqlDataSource1.Update();
            if (result != 0)
            {
                lblModElim.Text = "Se ha modificado " + result.ToString() + " registros";
                tboxDescripMME.Text = "";
            }
            else
            {
                lblModElim.Text = " No se modificado los elementos.";
            }
        }
    }
}