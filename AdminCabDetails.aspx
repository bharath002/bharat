<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminCabDetails.aspx.cs" Inherits="AdminCabDetails" %>

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
            Style="z-index: 103; left: 330px; position: absolute; top: 180px" BackColor="Maroon" Font-Size="XX-Large" ForeColor="#FF80FF" Width="470px">Cab Details Entry</asp:HyperLink>
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="Teal"
            Style="z-index: 104; left: 328px; position: absolute; top: 255px" Text="Cab  No"></asp:Label>
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="Teal"
            Style="z-index: 105; left: 328px; position: absolute; top: 311px" Text="Model" Width="105px"></asp:Label>
        &nbsp; &nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Style="z-index: 106; left: 450px; position: absolute;
            top: 254px" Width="195px"></asp:TextBox>
        &nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" Style="z-index: 107; left: 449px; position: absolute;
            top: 361px" Width="344px" Height="64px" TextMode="MultiLine"></asp:TextBox>
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1"
            DataTextField="ModelName" DataValueField="ModelName" Style="z-index: 108; left: 450px;
            position: absolute; top: 306px" Width="200px">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
            SelectCommand="SELECT [ModelName] FROM [CarModelTab] ORDER BY [ModelName]"></asp:SqlDataSource>
        <asp:Button ID="Button1" runat="server" Font-Names="Verdana" Font-Size="12pt" Style="z-index: 109;
            left: 640px; position: absolute; top: 668px" Text="Save" Width="162px" Height="41px" OnClick="Button1_Click" />
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="Teal"
            Style="z-index: 110; left: 328px; position: absolute; top: 365px" Text="Cab Details"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server" Style="z-index: 111; left: 450px; position: absolute;
            top: 461px" Width="195px"></asp:TextBox>
        <asp:TextBox ID="TextBox4" runat="server" Style="z-index: 112; left: 452px; position: absolute;
            top: 514px" Width="112px"></asp:TextBox>
        &nbsp; &nbsp;
        <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="Teal"
            Style="z-index: 113; left: 328px; position: absolute; top: 464px" Text="Total Seats"></asp:Label>
        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="Teal"
            Style="z-index: 114; left: 330px; position: absolute; top: 518px" Text="Price / KM"></asp:Label>
        <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="Teal"
            Style="z-index: 118; left: 328px; position: absolute; top: 572px" Text="Photo"
            Width="114px"></asp:Label>
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        <asp:FileUpload ID="FileUpload1" runat="server" Height="27px" Style="z-index: 116;
            left: 451px; position: absolute; top: 568px" Width="360px" />
        <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="Small"
            ForeColor="Teal" Style="z-index: 117; left: 456px; position: absolute; top: 549px"
            Text="Select Photo file in JPG format" Width="271px"></asp:Label>
    
    </div>
    </form>
</body>
</html>