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

public partial class CustBillList : System.Web.UI.Page
{

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["b1Var"] = GridView1.SelectedRow.Cells[1].Text;
        Response.Redirect("CustBillDis.aspx");
    }
}
