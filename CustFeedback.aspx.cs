using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.Windows.Forms;
public partial class CustFeedback : System.Web.UI.Page
{
    SqlConnection Conn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\CabBookingData.mdf;Integrated Security=True;User Instance=True");
    string SqlStr;
 
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int n1Var = 0;
        if (Conn.State == ConnectionState.Open) { Conn.Close(); Conn.Open(); } else { Conn.Open(); }
        SqlCommand cmd = new SqlCommand("select Max(fbno)+1 as NewNo from FeedbackTab", Conn);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            if (dr.IsDBNull(0)) n1Var = 1001;
            else
                n1Var = int.Parse(dr.GetValue(0).ToString());
        }
        Conn.Close();


        Conn.Open();
        SqlStr = "insert into FeedbackTab values(";
        SqlStr = SqlStr + "" + n1Var + ",";
        SqlStr = SqlStr + "'" + string.Format("{0:dd/MMM/yyyy}", DateTime.Now.Date) + "',";
        SqlStr = SqlStr + "'" + Application["UserVar"] + "',";
        SqlStr = SqlStr + "'" + TextBox1.Text + "',";
        SqlStr = SqlStr + "'" + TextBox2.Text + "')";
        SqlCommand cmd2 = new SqlCommand(SqlStr, Conn);
        cmd2.ExecuteNonQuery();
        Conn.Close();


        MessageBox.Show("Record created successfully");
        TextBox1.Text = "";
        TextBox2.Text = "";
    }
}
