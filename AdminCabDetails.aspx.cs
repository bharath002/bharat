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
public partial class AdminCabDetails : System.Web.UI.Page
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
        cmd.CommandText = "select * from CabDetailsTab where cabNo='" + TextBox1.Text + "'";
        dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            MessageBox.Show("This record is all ready present");
            return;

        }
        Conn.Close();


        string toDir;
        string FileNameVar="";
        if (FileUpload1.HasFile)
        {
            FileNameVar = FileUpload1.FileName.ToString();
            toDir = Server.MapPath(".") + "//Photos//" + FileNameVar;
            FileUpload1.SaveAs(toDir);
        }


        int a1no = 0;
        try { a1no = int.Parse(TextBox4.Text); }
        catch (System.Exception ex) { string a1 = ex.ToString(); }

        Conn.Open();
        SqlStr = "insert into CabDetailsTab values(";
        SqlStr = SqlStr + "'" + TextBox1.Text + "',";
        SqlStr = SqlStr + "'" + DropDownList1.Text + "',";
        SqlStr = SqlStr + "'" + TextBox2.Text + "',";
        SqlStr = SqlStr + "'" + TextBox3.Text + "',";
        SqlStr = SqlStr + "" + a1no + ",";
        SqlStr = SqlStr + "'" + FileNameVar + "','')";
        SqlCommand cmd2 = new SqlCommand(SqlStr, Conn);
        cmd2.ExecuteNonQuery();
        Conn.Close();
   

        MessageBox.Show("Record created successfully");
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox4.Text = "";
        TextBox3.Text = "";
    }
}

