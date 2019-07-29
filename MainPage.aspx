<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MainPage.aspx.cs" Inherits="MainPage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Online Cab Booking System</title>
</head>
<body bgcolor="#ccccff">
    <form id="form1" runat="server">
    <div>
        <asp:Image ID="Image1" runat="server" ImageUrl="~/images/Logo1.bmp" Style="z-index: 100;
            left: 0px; position: absolute; top: 0px" />
        <asp:Image ID="Image3" runat="server" Height="485px" ImageUrl="~/Images/aaa3.jpg"
            Style="z-index: 106; left: 501px; position: absolute; top: 175px" Width="796px" />
        <asp:Image ID="Image2" runat="server" ImageAlign="Left" ImageUrl="~/images/LogoBtm.gif"
            Style="z-index: 102; left: 0px; position: absolute; top: 676px" />
        <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="False" Font-Names="Arial Black"
            Style="z-index: 103; left: 33px; position: absolute; top: 276px" NavigateUrl="~/CustomerLoginPage.aspx" BackColor="#FF8000" BorderColor="#400000" BorderStyle="Solid" BorderWidth="2px" Font-Size="X-Large" Height="40px" Width="267px">Customer Login</asp:HyperLink>
        
        <asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="False" Font-Names="Arial Black"
            Style="z-index: 104; left: 33px; position: absolute; top: 349px" NavigateUrl="~/AdminLoginPage.aspx" BackColor="#FF8000" BorderColor="#400000" BorderStyle="Solid" BorderWidth="2px" Font-Size="X-Large" Height="40px" Width="267px">Admin Login</asp:HyperLink>
        <asp:HyperLink ID="HyperLink3" runat="server" Font-Bold="False" Font-Names="Arial Black"
            ForeColor="#C04000" NavigateUrl="~/Default.aspx" Style="z-index: 105; left: 1px;
            position: absolute; top: 161px">Home</asp:HyperLink>
    
    </div>
    </form>
</body>
</html>
