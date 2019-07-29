<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CustBook2.aspx.cs" Inherits="CustBook2" %>

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
            ForeColor="#C04000" NavigateUrl="~/CustMainPage.aspx" Style="z-index: 101; left: 0px;
            position: absolute; top: 160px">Home</asp:HyperLink>
        <asp:Image ID="Image2" runat="server" ImageAlign="Left" ImageUrl="~/images/LogoBtm.gif"
            Style="z-index: 102; left: 0px; position: absolute; top: 1009px" />
        <asp:Image ID="Image3" runat="server" Style="z-index: 121; left: 871px; position: absolute;
            top: 248px" />
        <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="False" Font-Names="Arial Black"
            Style="z-index: 104; left: 323px; position: absolute; top: 179px" BackColor="Maroon" Font-Size="XX-Large" ForeColor="#FF80FF" Width="470px">Cab Booking</asp:HyperLink>
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="Teal"
            Style="z-index: 105; left: 328px; position: absolute; top: 255px" Text="Cab  No"></asp:Label>
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="Teal"
            Style="z-index: 106; left: 328px; position: absolute; top: 311px" Text="Cust Name" Width="105px"></asp:Label>
        &nbsp; &nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Style="z-index: 107; left: 452px; position: absolute;
            top: 306px" Width="195px"></asp:TextBox>
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Style="z-index: 108;
            left: 59px; position: absolute; top: 224px" Text="Button" Visible="False" />
        &nbsp;
        &nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" Style="z-index: 109; left: 449px; position: absolute;
            top: 361px" Width="344px" Height="64px" TextMode="MultiLine"></asp:TextBox>
        <asp:TextBox ID="TextBox6" runat="server" Height="64px" Style="z-index: 110; left: 454px;
            position: absolute; top: 618px" TextMode="MultiLine" Width="344px"></asp:TextBox>
        <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="Teal"
            Style="z-index: 111; left: 330px; position: absolute; top: 620px" Text="Details"></asp:Label>
        &nbsp;
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
            SelectCommand="SELECT [ModelName] FROM [CarModelTab] ORDER BY [ModelName]"></asp:SqlDataSource>
        <asp:Button ID="Button1" runat="server" Font-Names="Verdana" Font-Size="12pt" Style="z-index: 112;
            left: 632px; position: absolute; top: 743px" Text="Book Cab" Width="162px" Height="41px" OnClick="Button1_Click" />
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="Teal"
            Style="z-index: 113; left: 328px; position: absolute; top: 365px" Text="Address"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server" Style="z-index: 114; left: 450px; position: absolute;
            top: 461px" Width="195px"></asp:TextBox>
        <asp:TextBox ID="TextBox5" runat="server" Style="z-index: 115; left: 453px; position: absolute;
            top: 566px" Width="195px"></asp:TextBox>
        <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="Teal"
            Style="z-index: 116; left: 331px; position: absolute; top: 570px" Text="From Date"></asp:Label>
        <asp:TextBox ID="TextBox5a" runat="server" Enabled="False" Style="z-index: 117; left: 451px;
            position: absolute; top: 251px" Width="195px"></asp:TextBox>
        <asp:TextBox ID="TextBox4" runat="server" Style="z-index: 118; left: 452px; position: absolute;
            top: 514px" Width="195px"></asp:TextBox>
        &nbsp; &nbsp;
        <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="Teal"
            Style="z-index: 119; left: 328px; position: absolute; top: 464px" Text="Mobile No"></asp:Label>
        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="Teal"
            Style="z-index: 120; left: 330px; position: absolute; top: 518px" Text="No days"></asp:Label>
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
    
    </div>
    </form>
</body>
</html>