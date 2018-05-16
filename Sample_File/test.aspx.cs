using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Oracle.ManagedDataAccess.Client;
public partial class test : System.Web.UI.Page
{

    static OracleDataReader reader;
    static OracleConnection conn;
    static OracleCommand cmd;
    static OracleDataReader dr;
    static OracleDataReader dr1;
    List<int> ans = new List<int>();
    static int count;

    static int active;
    static int hh, mm, ss;

    static double TimeAllSecondes = 40;
    protected void Timer1_Tick(object sender, EventArgs e)
    {
        if(TimeAllSecondes == 40)  
          System.Threading.Thread.Sleep(5000);

        if (TimeAllSecondes > 0)
        {
            TimeAllSecondes = TimeAllSecondes - 1;
        }
        if (TimeAllSecondes == 0)
        {
            Button1_Click(Button1, EventArgs.Empty);
        }
        TimeSpan time_Span = TimeSpan.FromSeconds(TimeAllSecondes);
        hh = time_Span.Hours;
        mm = time_Span.Minutes;
        ss = time_Span.Seconds;
        Label4.Text ="Time Left : "+ hh + ":" + mm + ":" + ss;
    }
    public Boolean readData()
    {

        if (dr.Read())
        {
            QuestionNumberLabel.Text = Convert.ToString(dr[0]);
           // Question.Text = Convert.ToString(dr[1]);
            Label5.Text = Convert.ToString(dr[1]); 
            int cnt = 1;
            for (int i = 2; i <= 5; i++)
            {
                CheckBoxList1.Items.Add(new ListItem(dr[i].ToString(), cnt.ToString()));
                ++cnt;
            }
            ans.Add(int.Parse(dr.GetValue(6).ToString()));
            count++;
            return true;
        }
        else
        {
            return false;
        }
    }

    protected void Page_Load(object sender, EventArgs e)
    {
      
        try
        {
            Label1.Text = Session["test"].ToString() + " Quiz ";
            Label2.Text = " " + Session["id"].ToString() + ", Good Luck for the Quiz ";

        }
        catch (Exception ex)
        {
            Session.RemoveAll();
            Response.Redirect("Default.aspx");
        }

        if (Request.QueryString["Default8"] == "")
            Response.Redirect("studentpanel.aspx");


        if (Page.IsPostBack == false)
        {
            count = 0;
            //Testnamelabel.Text = Request.QueryString["Default8"].ToString();
            //string oradb = "Data Source=(DESCRIPTION =" + "(ADDRESS = (PROTOCOL = TCP)(HOST = localhost)(PORT = 1521))" + "(CONNECT_DATA =" + "(SERVER = DEDICATED)" + "(SERVICE_NAME = orcl)));" + "User Id= SYS AS SYSDBA; Password=SYSDBA;";
            string oradb = "DATA SOURCE = localhost:1521 / orcl;  USER ID = dbuser1;" + " Password=dbuser1;";
            OracleConnection conn = new OracleConnection(oradb);

            try
            {
                conn.Open();
                //cmd = new OracleCommand("delete from Answers", conn);
                //dr1 = cmd.ExecuteReader();
                cmd = new OracleCommand("select QUESTION_NO,QUESTION,CHOICE_1,CHOICE_2,CHOICE_3,CHOICE_4,ANSWER From TP_QUESTIONS where TEST_NAME='" + Session["test"].ToString() + "' order by QUESTION_NO", conn);
                dr = cmd.ExecuteReader();
                CheckBoxList1.Items.Clear();
                readData();

            }
            catch (Exception ex)
            {

                Testnamelabel.Text = ex.ToString();
                return;
            }
        }
    }


    protected void saveNextButton_Click(object sender, EventArgs e)
    {
        string ordb = "DATA SOURCE = localhost:1521 / orcl;  USER ID = dbuser1;" + " Password=dbuser1;";
        try
        {
         
            string command = "insert into tp_answers (TEST_NAME,S_NAME,QUESTION_NO,ANSWER,ORIG_ANSWER) values(:TEST_NAME, :S_NAME,:QUESTION_NO,:ANSWER,:ORIG_ANSWER)";

            OracleConnection con = new OracleConnection(ordb);
            con.Open();
            OracleCommand cmd = new OracleCommand(command, con);

            cmd.Parameters.Add(new OracleParameter("TEST_NAME",Session["test"].ToString()));
            cmd.Parameters.Add(new OracleParameter("S_NAME", Session["id"].ToString()));
            cmd.Parameters.Add(new OracleParameter("QUESTION_NO", int.Parse(QuestionNumberLabel.Text.ToString())));///count));//Convert.ToInt32(QuestionNumberLabel.Text.ToString().Split()[2])));
            cmd.Parameters.Add(new OracleParameter("ANSWER", int.Parse(CheckBoxList1.SelectedValue.ToString())));
            cmd.Parameters.Add(new OracleParameter("ORIG_ANSWER", int.Parse(dr.GetValue(6).ToString())));
            //cmd.Connection.Open();
            cmd.ExecuteNonQuery();
            //cmd.Connection.Close();
            con.Close();
        }
        catch (Oracle.ManagedDataAccess.Client.OracleException expe)
        {

        }
        try
        {
            CheckBoxList1.Items.Clear();
            if (!readData())
            {
              
                int marks = 0;
                string comd = "select ANSWER,ORIG_ANSWER From TP_ANSWERS where TEST_NAME='" + Session["test"].ToString() + "' and S_NAME='" + Session["id"].ToString() + "' order by QUESTION_NO";
                string comd1 = "insert into tp_SCORES(TEST_NAME,S_NAME,MARKS) values (:TEST_NAME,:S_NAME,:MARKS) ";
                //string comd1 = "select ANSWER From QUESTIONS where TEST_NAME='" + Request.QueryString["test"].ToString() + "' order by QUESTION_NO";
                OracleConnection con1 = new OracleConnection(ordb);
                OracleCommand cmd1 = new OracleCommand(comd, con1);

                con1.Open();
                OracleDataReader r1 = cmd1.ExecuteReader();
                while (r1.Read())
                {
                    int a = int.Parse(r1.GetValue(0).ToString());
                    int o = int.Parse(r1.GetValue(1).ToString());
                    if (a == o)
                        marks += 1;
                }

                OracleCommand cmd2 = new OracleCommand(comd1, con1);

                cmd2.Parameters.Add(new OracleParameter("TEST_NAME",Session["test"].ToString()));
                cmd2.Parameters.Add(new OracleParameter("S_NAME", Session["id"].ToString()));
                cmd2.Parameters.Add(new OracleParameter("MARKS", marks));

                cmd2.ExecuteNonQuery();

                con1.Close();


                Response.Redirect("studentpanel.aspx");
            }
        }
        catch (Oracle.ManagedDataAccess.Client.OracleException exp)
        {
            //Label2.Text = exp.ToString();
            Response.Redirect("studentpanel.aspx");
        }
        catch (Exception ex)
        {
            Label2.Text = ex.ToString();
         //   Response.Redirect("studentpanel.aspx");
        }
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("studentpanel.aspx");
    }

   
}