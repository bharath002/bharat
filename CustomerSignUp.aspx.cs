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

public partial class CustomerSignUp : System.Web.UI.Page
{
    SqlConnection Conn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\CabBookingData.mdf;Integrated Security=True;User Instance=True");
    string SqlStr;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Conn.Open();
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;
        cmd.Connection = Conn;
        cmd.CommandText = "select * from CustomerTab where uName='" + TextBox1.Text + "'";
        dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            MessageBox.Show("This User Name is allready present choose another one");
            return;

        }
        Conn.Close();

        int a1no = 0;
        try { a1no = int.Parse(TextBox4.Text); }
        catch (System.Exception ex) { }

        Conn.Open();
        SqlStr = "insert into CustomerTab values(";
        SqlStr = SqlStr + "'" + TextBox1.Text + "',";
        SqlStr = SqlStr + "'" + TextBox2.Text + "',";
        SqlStr = SqlStr + "'" + TextBox4.Text + "',";
        SqlStr = SqlStr + "'" + TextBox5.Text + "',";
        SqlStr = SqlStr + "'" + TextBox6.Text + "',";
        SqlStr = SqlStr + "'" + TextBox7.Text + "',";
        SqlStr = SqlStr + "'" + TextBox8.Text + "',";
        SqlStr = SqlStr + "'Y')";
        SqlCommand cmd2 = new SqlCommand(SqlStr, Conn);
        cmd2.ExecuteNonQuery();
        Conn.Close();


        Response.Redirect("CustomerSignupRes.aspx");
    }
}

