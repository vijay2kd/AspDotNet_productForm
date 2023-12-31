using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TASK4_ProductStock_
{
    public partial class Task4productstock_st : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["sql_conn_task4"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter da = new SqlDataAdapter();
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnadd_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "sp_addbutton";
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@ProductID", txtproductid.Text);
            cmd.Parameters.AddWithValue("@productName", txtproductname.Text);
            cmd.Parameters.AddWithValue("@Description", txtDescription.Text);
            cmd.Parameters.AddWithValue("@Price ", txtPrice.Text);
            cmd.Parameters.AddWithValue("@Quantity ", txtQuantity.Text);
           
            cmd.Connection = con;
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Data is inserted Successfully...!')</script>");
            ClearForm();
        }
        void ClearForm()
        {
            txtproductid.Text = "";
            txtproductname.Text = "";
            txtDescription.Text = "";
            txtPrice.Text = "";
            txtQuantity.Text = "";
        }

      
        protected void View(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand();
            con.Open();
            da = new SqlDataAdapter("sp_view", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "sp_addbutton");
            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();
        }
    }
}