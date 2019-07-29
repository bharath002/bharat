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

public partial class CustBookRes : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        HyperLink2.Text = "Your Booking No is :" + Session["bookNo"].ToString();
        HyperLink4.Text = "Cab No is :  :" + Session["cabNo"].ToString();
    }
}
