<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminCustBill2.aspx.cs" Inherits="AdminCustBill2" %>

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
        <asp:HyperLink ID="HyperLink3" runat="server" Font-Bold="False" Font-Names="Arial Black"
            ForeColor="#C04000" NavigateUrl="~/AdminMainPage.aspx" Style="z-index: 101; left: 0px;
            position: absolute; top: 160px">Home</asp:HyperLink>
        <asp:Image ID="Image2" runat="server" ImageAlign="Left" ImageUrl="~/images/LogoBtm.gif"
            Style="z-index: 102; left: 0px; position: absolute; top: 800px" />
        <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="False" Font-Names="Arial Black"
            Style="z-index: 103; left: 330px; position: absolute; top: 180px" BackColor="Maroon" Font-Size="XX-Large" ForeColor="#FF80FF" Width="470px">Customer Cab Billing</asp:HyperLink>
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="Teal"
            Style="z-index: 104; left: 328px; position: absolute; top: 255px" Text="uName"></asp:Label>
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="Teal"
            Style="z-index: 105; left: 328px; position: absolute; top: 311px" Text="Vehicle No" Width="105px"></asp:Label>
        &nbsp; &nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Style="z-index: 106; left: 463px; position: absolute;
            top: 254px" Width="195px"></asp:TextBox>
        &nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" Style="z-index: 107; left: 464px; position: absolute;
            top: 304px" Width="194px" Height="17px"></asp:TextBox>
        &nbsp;
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
            SelectCommand="SELECT [ModelName] FROM [CarModelTab] ORDER BY [ModelName]"></asp:SqlDataSource>
        <asp:Button ID="Button1" runat="server" Font-Names="Verdana" Font-Size="12pt" Style="z-index: 108;
            left: 507px; position: absolute; top: 545px" Text="Save" Width="162px" Height="41px" OnClick="Button1_Click" />
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="Teal"
            Style="z-index: 109; left: 328px; position: absolute; top: 365px" Text="Total Kms"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server" Style="z-index: 110; left: 546px; position: absolute;
            top: 357px" Width="112px"></asp:TextBox>
        <asp:TextBox ID="TextBox4" runat="server" Style="z-index: 111; left: 546px; position: absolute;
            top: 407px" Width="112px"></asp:TextBox>
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Style="z-index: 116;
            left: 689px; position: absolute; top: 459px" Text="Total" Width="79px" />
        <asp:TextBox ID="TextBox5" runat="server" Style="z-index: 113; left: 546px; position: absolute;
            top: 459px" Width="112px"></asp:TextBox>
        &nbsp; &nbsp;&nbsp;
        <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="Teal"
            Style="z-index: 114; left: 328px; position: absolute; top: 464px" Text="Total Amount"></asp:Label>
        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="Teal"
            Style="z-index: 115; left: 328px; position: absolute; top: 412px" Text="Price / Km"></asp:Label>
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
    
    </div>
    </form>
</body>
</html>
