<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CustPerDetails.aspx.cs" Inherits="CustPerDetails" %>

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
        <asp:Image ID="Image2" runat="server" ImageAlign="Left" ImageUrl="~/images/LogoBtm.gif"
            Style="z-index: 101; left: 0px; position: absolute; top: 571px" />
        <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="False" Font-Names="Arial Black"
            Style="z-index: 102; left: 174px; position: absolute; top: 272px" ForeColor="Green" Width="341px" Height="80px">Your ticket booking is Successful</asp:HyperLink>
        <asp:HyperLink ID="HyperLink4" runat="server" Font-Bold="False" Font-Names="Arial Black"
            ForeColor="Green" Style="z-index: 103; left: 174px; position: absolute; top: 225px"
            Width="341px">Your ticket booking is Successful</asp:HyperLink>
        
        <asp:HyperLink ID="HyperLink3" runat="server" Font-Bold="False" Font-Names="Arial Black"
            ForeColor="#C04000" NavigateUrl="~/CustMainPage.aspx" Style="z-index: 104; left: 1px;
            position: absolute; top: 161px">Home</asp:HyperLink>
        <asp:Button ID="Button1" runat="server" PostBackUrl="~/CustMainPage.aspx" Style="z-index: 110;
            left: 409px; position: absolute; top: 463px" Text="Back" Width="110px" />
        <asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="False" Font-Names="Arial Black"
            ForeColor="#804000" Height="22px" Style="z-index: 106; left: 174px; position: absolute;
            top: 354px" Width="341px">[HyperLink2]</asp:HyperLink>
        <asp:HyperLink ID="HyperLink5" runat="server" Font-Bold="False" Font-Names="Arial Black"
            ForeColor="#804000" Height="22px" Style="z-index: 107; left: 174px; position: absolute;
            top: 384px" Width="341px">[HyperLink2]</asp:HyperLink>
        <asp:HyperLink ID="HyperLink6" runat="server" Font-Bold="False" Font-Names="Arial Black"
            ForeColor="#804000" Height="22px" Style="z-index: 108; left: 174px; position: absolute;
            top: 413px" Width="341px">[HyperLink2]</asp:HyperLink>
        <asp:HyperLink ID="HyperLink7" runat="server" BackColor="Maroon" Font-Bold="False"
            Font-Names="Arial Black" ForeColor="#FF8000" Style="z-index: 109; left: 172px;
            position: absolute; top: 165px" Width="341px">Personal Details</asp:HyperLink>
    
    </div>
    </form>
</body>
</html>
