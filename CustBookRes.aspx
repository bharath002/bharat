<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CustBookRes.aspx.cs" Inherits="CustBookRes" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Online Cab Booking System</title>
</head>
<body bgcolor="#ccccff">
    <form id="form1" runat="server">
    <div>
        <asp:Image ID="Image1" runat="server" ImageUrl="~/images/Logo1.bmp" Style="z-index: 100;
            left: 0px; position: absolute; top: 0px" />
        <asp:HyperLink ID="HyperLink4" runat="server" BackColor="Maroon" Font-Bold="False"
            Font-Names="Arial Black" Font-Size="XX-Large" ForeColor="#FF80FF" Style="z-index: 101;
            left: 181px; position: absolute; top: 383px" Width="838px">Cab No is : </asp:HyperLink>
        <asp:HyperLink ID="HyperLink3" runat="server" Font-Bold="False" Font-Names="Arial Black"
            ForeColor="#C04000" NavigateUrl="~/CustMainPage.aspx" Style="z-index: 102; left: 0px;
            position: absolute; top: 160px">Home</asp:HyperLink>
        <asp:HyperLink ID="HyperLink1" runat="server" BackColor="Maroon" Font-Bold="False"
            Font-Names="Arial Black" Font-Size="XX-Large" ForeColor="#FF80FF" Style="z-index: 103;
            left: 185px; position: absolute; top: 202px" Width="838px">Cab Booking Successful</asp:HyperLink>
       

        <asp:Image ID="Image2" runat="server" ImageAlign="Left" ImageUrl="~/images/LogoBtm.gif"
            Style="z-index: 104; left: 0px; position: absolute; top: 971px" />
        <asp:HyperLink ID="HyperLink2" runat="server" BackColor="Maroon" Font-Bold="False"
            Font-Names="Arial Black" Font-Size="XX-Large" ForeColor="#FF80FF" Style="z-index: 105;
            left: 184px; position: absolute; top: 296px" Width="838px">Your Booking No is :</asp:HyperLink>
        <asp:HyperLink ID="HyperLink5" runat="server" BackColor="Maroon" Font-Bold="False"
            Font-Names="Arial Black" Font-Size="XX-Large" ForeColor="#FF80FF" NavigateUrl="~/CustMainPage.aspx"
            Style="z-index: 107; left: 180px; position: absolute; top: 495px" Width="838px">Click here to back to mainpage</asp:HyperLink>
     
    </div>
    </form>
</body>
</html>

