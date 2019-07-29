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

public partial class AdminCustBill2 : System.Web.UI.Page
{
    SqlConnection Conn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\CabBookingData.mdf;Integrated Security=True;User Instance=True");
    string SqlStr;
    int bVar = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            bVar = int.Parse(Request.QueryString["bVar"]);
        }
        catch (System.Exception ex) { }

        if (Conn.State == ConnectionState.Open) { Conn.Close(); Conn.Open(); } else { Conn.Open(); }
        SqlCommand cmd = new SqlCommand("select uName,cabNo,nodays from CabBookingTab where bNo=" + bVar + "", Conn);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            TextBox1.Text = dr.GetString(0);
            TextBox2.Text = dr.GetString(1);
            //TextBox3.Text = dr.GetString(2);
        }
        if (Conn.State == ConnectionState.Open) { Conn.Close(); } 

    }
    protected void Button1_Click(object sender, EventArgs e)
    {


        int n1Var = 0;
        if (Conn.State == ConnectionState.Open) { Conn.Close(); Conn.Open(); } else { Conn.Open(); }
        SqlCommand cmd = new SqlCommand("select Max(billno)+1 as NewNo from CabBillingTab", Conn);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            if (dr.IsDBNull(0)) n1Var = 1001;
            else
                n1Var = int.Parse(dr.GetValue(0).ToString());
        }
        Conn.Close();

        Conn.Open();
        SqlStr = "insert into CabBillingTab values(";
        SqlStr = SqlStr + "" + n1Var + ",";
        SqlStr = SqlStr + "'" + string.Format("{0:dd/MMM/yyyy}", DateTime.Now.Date) + "',";
        SqlStr = SqlStr + "'" + TextBox1.Text + "',";
        SqlStr = SqlStr + "'" + TextBox2.Text + "',";
        SqlStr = SqlStr + "" + int.Parse(TextBox3.Text) + ",";
        SqlStr = SqlStr + "" + int.Parse(TextBox4.Text) + ",";
        SqlStr = SqlStr + "" + int.Parse(TextBox5.Text) + ")";
        SqlCommand cmd2 = new SqlCommand(SqlStr, Conn);
        cmd2.ExecuteNonQuery();
        Conn.Close();

        MessageBox.Show("Record saved successfully");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        int t1 = 0;
        try
        {
            t1 = (int.Parse(TextBox3.Text)*int.Parse(TextBox4.Text));
        }
        catch (System.Exception ex) { }
        TextBox5.Text = t1.ToString();
    }
}
