using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Oracle.ManagedDataAccess.Client;
public partial class deletetest : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            Label1.Text = " " + Session["id"].ToString() + ", enter test name to delete test.";
        }
        catch (Exception ex)
        {
            Session.RemoveAll();
            Response.Redirect("Default.aspx");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("adminpanel.aspx");
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
      try
        {
         string oradb = "DATA SOURCE = localhost:1521 / orcl; USER ID = dbuser1;" + " Password=dbuser1;";
         string commandText = "delete from tp_questions where TEST_NAME=(:TN)";
         using (OracleConnection connection = new OracleConnection(oradb))
         using (OracleCommand command = new OracleCommand(commandText, connection))
         {

             command.Parameters.Add(new OracleParameter("TN", TextBox1.Text.ToString()));
             command.Connection.Open();
             command.ExecuteNonQuery();
             command.Connection.Close();
             Label1.Text = "Data Deleted.";
         }

        }
        catch (Exception ex)
        {
            Label1.Text = ex.ToString();
        }
    }
    }