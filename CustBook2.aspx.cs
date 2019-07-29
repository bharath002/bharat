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

public partial class CustBook2 : System.Web.UI.Page
{
    SqlConnection Conn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\CabBookingData.mdf;Integrated Security=True;User Instance=True");
    string SqlStr;
    int bVar = 0;
    string f1Var = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        //MessageBox.Show("oK");
        try
        {
           TextBox5a.Text = Request.QueryString["bVar"];
           if (Conn.State == ConnectionState.Open) { Conn.Close(); Conn.Open(); } else { Conn.Open(); }
           SqlCommand cmd = new SqlCommand("select p1Name from CabDetailsTab where cabno='" + TextBox5a.Text + "'", Conn);
           SqlDataReader dr = cmd.ExecuteReader();
           if (dr.Read())
           {
               if (dr.IsDBNull(0)) f1Var = "";
               else
                   f1Var = dr.GetValue(0).ToString();
           }
           Conn.Close();

           Image3.ImageUrl = "~/photos/" + f1Var;
        }
        catch (System.Exception ex) { }

       

    }
    protected void Button1_Click(object sender, EventArgs e)
    {


        int n1Var = 0;
        if (Conn.State == ConnectionState.Open) { Conn.Close(); Conn.Open(); } else { Conn.Open(); }
        SqlCommand cmd = new SqlCommand("select Max(bno)+1 as NewNo from CabBookingTab", Conn);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            if (dr.IsDBNull(0)) n1Var = 1001;
            else
                n1Var = int.Parse(dr.GetValue(0).ToString());
        }
        Conn.Close();

        Conn.Open();
        SqlStr = "insert into CabBookingTab values(";
        SqlStr = SqlStr + "" + n1Var + ",";
        SqlStr = SqlStr + "'" + string.Format("{0:dd/MMM/yyyy}", DateTime.Now.Date) + "',";
        SqlStr = SqlStr + "'" + TextBox5a.Text + "',";
        SqlStr = SqlStr + "'" + Application["UserVar"] + "',";
        SqlStr = SqlStr + "'" + TextBox1.Text + "',";
        SqlStr = SqlStr + "'" + TextBox2.Text + "',";
        SqlStr = SqlStr + "'" + TextBox3.Text + "',";
        SqlStr = SqlStr + "'" + TextBox4.Text + "',";
        SqlStr = SqlStr + "'" + TextBox5.Text + "',";
        SqlStr = SqlStr + "'" + TextBox6.Text + "',";
        SqlStr = SqlStr + "'N',";
        SqlStr = SqlStr + "'')";
        SqlCommand cmd2 = new SqlCommand(SqlStr, Conn);
        cmd2.ExecuteNonQuery();
        Conn.Close();
        Session["bookNo"] = n1Var.ToString();
        Session["cabNo"] = TextBox5a.Text;
        Response.Redirect("CustPayment.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {
            TextBox5a.Text = Request.QueryString["bVar"];
        }
        catch (System.Exception ex) { }
    }
}
