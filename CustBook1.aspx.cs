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

public partial class CustBook1 : System.Web.UI.Page
{

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Custbook1.aspx?mvar="+DropDownList1.Text);
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        
        Response.Redirect("CustBook2.aspx?bVar=" + GridView1.SelectedRow.Cells[1].Text);
    }
}
