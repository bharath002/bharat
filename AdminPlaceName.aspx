<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminPlaceName.aspx.cs" Inherits="AdminPlaceName" %>

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
        <asp:HyperLink ID="HyperLink3" runat="server" Font-Bold="False" Font-Names="Arial Black"
            ForeColor="#C04000" NavigateUrl="~/AdminMainPage.aspx" Style="z-index: 101; left: 0px;
            position: absolute; top: 160px">Home</asp:HyperLink>
        <asp:Image ID="Image2" runat="server" ImageAlign="Left" ImageUrl="~/images/LogoBtm.gif"
            Style="z-index: 102; left: 0px; position: absolute; top: 571px" />
        <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="False" Font-Names="Arial Black"
            Style="z-index: 103; left: 188px; position: absolute; top: 195px" BackColor="Maroon" Font-Size="XX-Large" ForeColor="#FF80FF" Width="636px">Place Names</asp:HyperLink>
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="Teal"
            Style="z-index: 104; left: 186px; position: absolute; top: 284px" Text="Place Name" BackColor="#FFE0C0" BorderColor="#400000" BorderStyle="Solid" BorderWidth="1px" Font-Size="X-Large" Width="218px"></asp:Label>
        &nbsp;&nbsp;
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
            SelectCommand="SELECT [CountryName] FROM [CountryTab] ORDER BY [CountryName]"></asp:SqlDataSource>
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="Teal"
            Style="z-index: 107; left: 188px; position: absolute; top: 349px" Text="Details" BackColor="#FFE0C0" BorderColor="#400000" BorderStyle="Solid" BorderWidth="1px" Font-Size="X-Large" Width="215px"></asp:Label>
        &nbsp; &nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Style="z-index: 108; left: 453px; position: absolute;
            top: 280px" Width="366px" Font-Names="Verdana" Font-Size="X-Large"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
            ErrorMessage="* Enter the Place Name" Font-Bold="True" Font-Names="Verdana" Style="z-index: 109;
            left: 845px; position: absolute; top: 280px" Width="249px"></asp:RequiredFieldValidator>
        &nbsp;
        <asp:TextBox ID="TextBox2" runat="server" Style="z-index: 110; left: 454px; position: absolute;
            top: 345px" Width="366px" Font-Names="Verdana" Font-Size="X-Large"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Font-Names="Verdana" Font-Size="X-Large" Style="z-index: 111;
            left: 573px; position: absolute; top: 434px" Text="Save" Width="248px" Height="48px" OnClick="Button1_Click" />
    
    </div>
    </form>
</body>
</html>
