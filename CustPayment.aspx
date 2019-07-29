<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CustPayment.aspx.cs" Inherits="CustPayment" %>

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
            Style="z-index: 102; left: 6px; position: absolute; top: 763px" />
        &nbsp;
        <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="False" Font-Names="Arial Black"
            Style="z-index: 104; left: 323px; position: absolute; top: 179px" BackColor="Maroon" Font-Size="XX-Large" ForeColor="#FF80FF" Width="470px">Advance Payment</asp:HyperLink>
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="Teal"
            Style="z-index: 105; left: 328px; position: absolute; top: 255px" Text="Cab  No"></asp:Label>
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="Teal"
            Style="z-index: 106; left: 328px; position: absolute; top: 311px" Text="Advance Amt" Width="157px"></asp:Label>
        &nbsp; &nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Style="z-index: 107; left: 476px; position: absolute;
            top: 307px" Width="195px"></asp:TextBox>
        &nbsp; &nbsp;
        &nbsp;
        &nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" Style="z-index: 108; left: 477px; position: absolute;
            top: 411px" Width="344px" Height="64px" TextMode="MultiLine"></asp:TextBox>
        &nbsp; &nbsp;&nbsp;
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
            SelectCommand="SELECT [ModelName] FROM [CarModelTab] ORDER BY [ModelName]"></asp:SqlDataSource>
        <asp:Button ID="Button1" runat="server" Font-Names="Verdana" Font-Size="12pt" Style="z-index: 110;
            left: 608px; position: absolute; top: 582px" Text="Save" Width="162px" Height="41px" OnClick="Button1_Click" />
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="Teal"
            Style="z-index: 111; left: 330px; position: absolute; top: 412px" Text="Payment Details"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server" Style="z-index: 112; left: 478px; position: absolute;
            top: 503px" Width="195px"></asp:TextBox>
        &nbsp;&nbsp;
        <asp:TextBox ID="TextBox5a" runat="server" Enabled="False" Style="z-index: 114; left: 476px;
            position: absolute; top: 251px" Width="195px"></asp:TextBox>
        &nbsp; &nbsp;
        &nbsp; &nbsp;
        <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="Teal"
            Style="z-index: 115; left: 331px; position: absolute; top: 362px" Text="Payment Type"></asp:Label>
        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="Teal"
            Style="z-index: 116; left: 332px; position: absolute; top: 509px" Text="Remarks" Width="120px"></asp:Label>
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server" Style="z-index: 118; left: 475px;
            position: absolute; top: 357px" Width="202px">
            <asp:ListItem>Credit Card</asp:ListItem>
            <asp:ListItem>Debit Card</asp:ListItem>
            <asp:ListItem>Bank Transfer</asp:ListItem>
            <asp:ListItem>Cheque</asp:ListItem>
            <asp:ListItem>Cash Sent</asp:ListItem>
            <asp:ListItem>Others</asp:ListItem>
        </asp:DropDownList>
    
    </div>
    </form>
</body>
</html>