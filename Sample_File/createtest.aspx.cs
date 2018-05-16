using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Oracle.ManagedDataAccess.Client;
public partial class createtest : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            Label1.Text = " "+Session["id"].ToString() + ", you can create test here !";
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

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {
            string oradb = "DATA SOURCE = localhost:1521 / orcl; USER ID = dbuser1;" + " Password=dbuser1;";
            string commandText = "insert into tp_questions (TEST_NAME,QUESTION_NO,QUESTION,CHOICE_1,CHOICE_2,CHOICE_3,CHOICE_4,ANSWER) values(:TN,:Q_NO,:QUE,:C_1,:C_2,:C_3,:C_4,:ANS)";
            using (OracleConnection connection = new OracleConnection(oradb))
            using (OracleCommand command = new OracleCommand(commandText, connection))
            {

                command.Parameters.Add(new OracleParameter("TN", TextBox1.Text.ToString()));
                command.Parameters.Add(new OracleParameter("Q_NO", TextBox2.Text.ToString()));
                command.Parameters.Add(new OracleParameter("QUE", TextBox3.Text.ToString()));
                command.Parameters.Add(new OracleParameter("C_1", TextBox4.Text.ToString()));
                command.Parameters.Add(new OracleParameter("C_2", TextBox5.Text.ToString()));
                command.Parameters.Add(new OracleParameter("C_3", TextBox6.Text.ToString()));
                command.Parameters.Add(new OracleParameter("C_4", TextBox7.Text.ToString()));
                command.Parameters.Add(new OracleParameter("ANS", TextBox8.Text.ToString()));
                //command.Parameters.Add(new OracleParameter("S_CRED", txt_cred.Text.ToString()));
                command.Connection.Open();
                command.ExecuteNonQuery();
                command.Connection.Close();
                Label2.Text = " Data inserted sucessfully. ";
            }

        }
        catch (Exception ex)
        {
            Label2.Text = ex.ToString();
        }
    }
}