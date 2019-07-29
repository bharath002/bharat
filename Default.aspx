<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Online Cab Booking System</title>
</head>
<body bgcolor="#ccccff">
    <form id="form1" runat="server">
    <div>
        <asp:Image ID="Image1" runat="server" ImageUrl="~/images/Logo1.bmp" Style="z-index: 100;
            left: 0px; position: absolute; top: 0px" /><asp:Image ID="Image3" runat="server" ImageUrl="~/Images/aaa2.jpg" Style="z-index: 105;
            left: 501px; position: absolute; top: 169px" Height="485px" Width="796px" />
        <asp:Image ID="Image2" runat="server" ImageAlign="Left" ImageUrl="~/images/LogoBtm.gif"
            Style="z-index: 102; left: -50px; position: absolute; top: 662px" Width="1345px" />
        <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="False" Font-Names="Arial Black"
            Style="z-index: 103; left: 28px; position: absolute; top: 276px">Online Cab Booking System</asp:HyperLink>

        <asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="False" Font-Names="Arial Black"
            Style="z-index: 104; left: 36px; position: absolute; top: 486px" NavigateUrl="~/MainPage.aspx">Continue........</asp:HyperLink>
    
    </div>
    </form>
</body>
</html>
