<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CustomerSignUp.aspx.cs" Inherits="CustomerSignUp" %>

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
            ForeColor="#C04000" NavigateUrl="~/Default.aspx" Style="z-index: 101; left: 0px;
            position: absolute; top: 160px">Home</asp:HyperLink>
        <asp:Image ID="Image2" runat="server" ImageAlign="Left" ImageUrl="~/images/LogoBtm.gif"
            Style="z-index: 102; left: 8px; position: absolute; top: 763px" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
            ErrorMessage="* Enter UserName" Style="z-index: 103; left: 385px; position: absolute;
            top: 292px"></asp:RequiredFieldValidator>
        <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="False" Font-Names="Arial Black"
            Style="z-index: 104; left: 48px; position: absolute; top: 217px" BackColor="Maroon" Font-Size="XX-Large" ForeColor="#FF80FF" Width="335px">Customer Signup</asp:HyperLink>
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="Teal"
            Style="z-index: 105; left: 54px; position: absolute; top: 293px" Text="User Name"></asp:Label>
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="Teal"
            Style="z-index: 106; left: 54px; position: absolute; top: 348px" Text="Password"></asp:Label>
        &nbsp; &nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Style="z-index: 107; left: 214px; position: absolute;
            top: 290px"></asp:TextBox>
        &nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" Style="z-index: 108; left: 217px; position: absolute;
            top: 345px" TextMode="Password" Width="146px"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Font-Names="Verdana" Font-Size="12pt" Style="z-index: 109;
            left: 779px; position: absolute; top: 462px" Text="Signup" Width="169px" Height="33px" OnClick="Button1_Click" />
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="Teal"
            Style="z-index: 110; left: 54px; position: absolute; top: 401px" Text="Retype Password"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server" Style="z-index: 111; left: 217px; position: absolute;
            top: 399px" TextMode="Password" Width="146px"></asp:TextBox>
        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="Teal"
            Style="z-index: 112; left: 554px; position: absolute; top: 214px" Text="Name"></asp:Label>
        <asp:TextBox ID="TextBox4" runat="server" Style="z-index: 113; left: 701px; position: absolute;
            top: 207px" Width="243px"></asp:TextBox>
        <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="Teal"
            Style="z-index: 114; left: 554px; position: absolute; top: 246px" Text="Address"></asp:Label>
        <asp:TextBox ID="TextBox5" runat="server" Height="76px" Style="z-index: 115; left: 701px;
            position: absolute; top: 242px" TextMode="MultiLine" Width="243px"></asp:TextBox>
        <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="Teal"
            Style="z-index: 116; left: 554px; position: absolute; top: 344px" Text="eMail"></asp:Label>
        <asp:TextBox ID="TextBox6" runat="server" Style="z-index: 117; left: 701px; position: absolute;
            top: 342px" Width="243px"></asp:TextBox>
        <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="Teal"
            Style="z-index: 118; left: 554px; position: absolute; top: 379px" Text="Mobile No"
            Width="106px"></asp:Label>
        <asp:TextBox ID="TextBox7" runat="server" Style="z-index: 119; left: 701px; position: absolute;
            top: 378px" Width="243px"></asp:TextBox>
        <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="Teal"
            Style="z-index: 120; left: 554px; position: absolute; top: 421px" Text="Valid Document No"
            Width="184px"></asp:Label>
        <asp:TextBox ID="TextBox8" runat="server" Style="z-index: 121; left: 701px; position: absolute;
            top: 416px" Width="243px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2"
            ErrorMessage="* Enter Password" Style="z-index: 122; left: 386px; position: absolute;
            top: 346px"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox7"
            ErrorMessage="* Enter Mobile No" Style="z-index: 123; left: 962px; position: absolute;
            top: 381px" Width="159px"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox6"
            ErrorMessage="* Enter Email Id" Style="z-index: 124; left: 964px; position: absolute;
            top: 343px" Width="159px"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox6"
            ErrorMessage="* Enter valid emailid" Style="z-index: 125; left: 971px; position: absolute;
            top: 344px" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
            Width="168px"></asp:RegularExpressionValidator>
        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox7"
            ErrorMessage="Enter Valid MobileNo" MaximumValue="9999999999" MinimumValue="7000000000"
            Style="z-index: 127; left: 975px; position: absolute; top: 381px" Type="Double"
            Width="258px"></asp:RangeValidator>
    
    </div>
    </form>
</body>
</html>
