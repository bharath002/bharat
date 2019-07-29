<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminMainPage.aspx.cs" Inherits="AdminMainPage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Online Cab Booking System</title>
</head>
<body bgcolor="#ccccff">
    <form id="form1" runat="server">
    <div>
        <asp:Image ID="Image1" runat="server" ImageUrl="~/images/Logo1.bmp" Style="z-index: 100;
            left: 0px; position: absolute; top: 1px" />
        <asp:Image ID="Image2" runat="server" ImageAlign="Left" ImageUrl="~/images/LogoBtm.gif"
            Style="z-index: 101; left: 0px; position: absolute; top: 900px" />
        <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Names="Comic Sans MS"
            Style="z-index: 102; left: 227px; position: absolute; top: 386px" NavigateUrl="~/AdminEmp.aspx" BackColor="Black" BorderColor="Maroon" BorderStyle="Solid" BorderWidth="3px" Width="286px" Font-Size="X-Large" ForeColor="#FFC0FF" Height="40px">Driver Details</asp:HyperLink>
        &nbsp;
        <asp:HyperLink ID="HyperLink10" runat="server" Font-Bold="True" Font-Names="Comic Sans MS"
            NavigateUrl="~/AdminCustList.aspx" Style="z-index: 103; left: 693px;
            position: absolute; top: 201px" Width="286px" BackColor="Black" BorderColor="Maroon" BorderStyle="Solid" BorderWidth="3px" Font-Size="X-Large" ForeColor="#FFC0FF" Height="40px">Customer List</asp:HyperLink>
        &nbsp; &nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink3" runat="server" Font-Bold="False" Font-Names="Arial Black"
            ForeColor="#C04000" NavigateUrl="~/Default.aspx" Style="z-index: 104; left: 1px;
            position: absolute; top: 161px">Home</asp:HyperLink>
        <asp:HyperLink ID="HyperLink4" runat="server" Font-Bold="True" Font-Names="Comic Sans MS"
            NavigateUrl="~/AdminCarModel.aspx" Style="z-index: 105; left: 227px; position: absolute;
            top: 264px" BackColor="Black" BorderColor="Maroon" BorderStyle="Solid" BorderWidth="3px" Width="286px" Font-Size="X-Large" ForeColor="#FFC0FF" Height="40px">Car Model Names</asp:HyperLink>
        <asp:HyperLink ID="HyperLink8" runat="server" Font-Bold="True" Font-Names="Comic Sans MS"
            NavigateUrl="~/AdminPlaceName.aspx" Style="z-index: 106; left: 227px; position: absolute;
            top: 203px" BackColor="Black" BorderColor="Maroon" BorderStyle="Solid" BorderWidth="3px" Width="286px" Font-Size="X-Large" ForeColor="#FFC0FF" Height="40px">Place Names</asp:HyperLink>
        <asp:HyperLink ID="HyperLink9" runat="server" BackColor="Black" BorderColor="Maroon"
            BorderStyle="Solid" BorderWidth="3px" Font-Bold="True" Font-Names="Comic Sans MS"
            Font-Size="X-Large" ForeColor="#FFC0FF" Height="40px" NavigateUrl="~/AdminPlaceList.aspx"
            Style="z-index: 107; left: 526px; position: absolute; top: 203px" Width="107px">List</asp:HyperLink>
        <asp:HyperLink ID="HyperLink11" runat="server" BackColor="Black" BorderColor="Maroon"
            BorderStyle="Solid" BorderWidth="3px" Font-Bold="True" Font-Names="Comic Sans MS"
            Font-Size="X-Large" ForeColor="#FFC0FF" Height="40px" NavigateUrl="~/AdminCarModelList.aspx"
            Style="z-index: 108; left: 526px; position: absolute; top: 262px" Width="107px">List</asp:HyperLink>
        <asp:HyperLink ID="HyperLink12" runat="server" BackColor="Black" BorderColor="Maroon"
            BorderStyle="Solid" BorderWidth="3px" Font-Bold="True" Font-Names="Comic Sans MS"
            Font-Size="X-Large" ForeColor="#FFC0FF" Height="40px" NavigateUrl="~/AdminCabList.aspx"
            Style="z-index: 109; left: 525px; position: absolute; top: 323px" Width="107px">List</asp:HyperLink>
        <asp:HyperLink ID="HyperLink14" runat="server" BackColor="Black" BorderColor="Maroon"
            BorderStyle="Solid" BorderWidth="3px" Font-Bold="True" Font-Names="Comic Sans MS"
            Font-Size="X-Large" ForeColor="#FFC0FF" Height="40px" NavigateUrl="~/AdminDriverList.aspx"
            Style="z-index: 110; left: 524px; position: absolute; top: 384px" Width="107px">List</asp:HyperLink>
        <asp:HyperLink ID="HyperLink16" runat="server" BackColor="Black" BorderColor="Maroon"
            BorderStyle="Solid" BorderWidth="3px" Font-Bold="True" Font-Names="Comic Sans MS"
            Font-Size="X-Large" ForeColor="#FFC0FF" Height="40px" NavigateUrl="~/AdminFeedbackList.aspx"
            Style="z-index: 118; left: 525px; position: absolute; top: 453px" Width="107px">Feedback</asp:HyperLink>
        &nbsp;
        &nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink5" runat="server" Font-Bold="True" Font-Names="Comic Sans MS"
            NavigateUrl="~/AdminCabDetails.aspx" Style="z-index: 112; left: 227px; position: absolute;
            top: 325px" BackColor="Black" BorderColor="Maroon" BorderStyle="Solid" BorderWidth="3px" Width="286px" Font-Size="X-Large" ForeColor="#FFC0FF" Height="40px">Cab Details</asp:HyperLink>
        &nbsp;
        <asp:HyperLink ID="HyperLink2" runat="server" BackColor="Black" BorderColor="Maroon"
            BorderStyle="Solid" BorderWidth="3px" Font-Bold="True" Font-Names="Comic Sans MS"
            NavigateUrl="~/AdminBookingList.aspx" Style="z-index: 113; left: 693px; position: absolute;
            top: 262px" Width="286px" Font-Size="X-Large" ForeColor="#FFC0FF" Height="40px">Booking List</asp:HyperLink>
        <asp:HyperLink ID="HyperLink13" runat="server" BackColor="Black" BorderColor="Maroon"
            BorderStyle="Solid" BorderWidth="3px" Font-Bold="True" Font-Names="Comic Sans MS"
            NavigateUrl="~/AdminCustBill1.aspx" Style="z-index: 114; left: 693px;
            position: absolute; top: 389px" Width="286px" Font-Size="X-Large" ForeColor="#FFC0FF" Height="40px">Customer Billing</asp:HyperLink>
        <asp:HyperLink ID="HyperLink6" runat="server" BackColor="Black" BorderColor="Maroon"
            BorderStyle="Solid" BorderWidth="3px" Font-Bold="True" Font-Names="Comic Sans MS"
            Font-Size="X-Large" ForeColor="#FFC0FF" Height="40px" NavigateUrl="~/AdminCustBillList.aspx"
            Style="z-index: 115; left: 693px; position: absolute; top: 453px" Width="286px">Billing List</asp:HyperLink>
        <asp:HyperLink ID="HyperLink7" runat="server" BackColor="Black" BorderColor="Maroon"
            BorderStyle="Solid" BorderWidth="3px" Font-Bold="True" Font-Names="Comic Sans MS"
            Font-Size="X-Large" ForeColor="#FFC0FF" Height="40px" NavigateUrl="~/Default.aspx"
            Style="z-index: 116; left: 225px; position: absolute; top: 453px" Width="290px">Logout</asp:HyperLink>
        <asp:HyperLink ID="HyperLink15" runat="server" BackColor="Black" BorderColor="Maroon"
            BorderStyle="Solid" BorderWidth="3px" Font-Bold="True" Font-Names="Comic Sans MS"
            Font-Size="X-Large" ForeColor="#FFC0FF" Height="40px" NavigateUrl="~/AdminAdvPaymentList.aspx"
            Style="z-index: 117; left: 692px; position: absolute; top: 324px" Width="286px">Advance Payment List</asp:HyperLink>
    
    </div>
    </form>
</body>
</html>
