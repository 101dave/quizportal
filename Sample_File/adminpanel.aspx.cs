using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Oracle.ManagedDataAccess.Client;

public partial class adminpanel : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            Label1.Text = "Welcome " + Session["id"].ToString() + " !";
        }
        catch (Exception ex)
        {
            Session.RemoveAll();
            Response.Redirect("Default.aspx");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Response.Redirect("Default.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("createtest.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("viewtest.aspx");
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("deletetest.aspx");
    }
}