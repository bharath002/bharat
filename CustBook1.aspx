<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CustBook1.aspx.cs" Inherits="CustBook1" %>

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
        <asp:HyperLink ID="HyperLink1" runat="server" BackColor="Maroon" Font-Bold="False"
            Font-Names="Arial Black" Font-Size="XX-Large" ForeColor="#FF80FF" Style="z-index: 102;
            left: 185px; position: absolute; top: 202px" Width="838px">Book Cab</asp:HyperLink>
        <asp:Label ID="Label1" runat="server" Font-Names="Verdana" Font-Size="X-Large" Style="z-index: 103;
            left: 190px; position: absolute; top: 295px" Text="Select Cab Model" Width="233px"></asp:Label>
        <asp:Button ID="Button1" runat="server" Font-Names="Verdana" Font-Size="X-Large"
            Height="38px" Style="z-index: 108; left: 780px; position: absolute; top: 289px"
            Text="Search" Width="245px" OnClick="Button1_Click" />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
            BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2"
  ForeColor="Black" GridLines="None" Style="z-index: 105;
            left: 186px; position: absolute; top: 334px" Width="833px" Height="362px" DataKeyNames="CabNo" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged"  >
            <FooterStyle BackColor="Tan" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="CabNo" HeaderText="CabNo" ReadOnly="True" SortExpression="CabNo" />
                <asp:BoundField DataField="ModelName" HeaderText="ModelName" SortExpression="ModelName" />
                <asp:BoundField DataField="Details" HeaderText="Details" SortExpression="Details" />
                <asp:BoundField DataField="totSeats" HeaderText="totSeats" SortExpression="totSeats" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
            SelectCommand="SELECT [CabNo], [ModelName], [Details], [totSeats], [Price] FROM [CabDetailsTab] WHERE ([ModelName] = @ModelName) ORDER BY [ModelName]">
            <SelectParameters>
                <asp:QueryStringParameter Name="ModelName" QueryStringField="mvar" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
   
       
        <asp:Image ID="Image2" runat="server" ImageAlign="Left" ImageUrl="~/images/LogoBtm.gif"
            Style="z-index: 106; left: 0px; position: absolute; top: 971px" />
        <asp:DropDownList ID="DropDownList1" runat="server" Font-Names="Verdana" Font-Size="X-Large"
            Style="z-index: 107; left: 446px; position: absolute; top: 291px" Width="273px" DataSourceID="SqlDataSource2" DataTextField="ModelName" DataValueField="ModelName">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
            SelectCommand="SELECT [ModelName] FROM [CarModelTab] ORDER BY [ModelName]"></asp:SqlDataSource>
     
    </div>
    </form>
</body>
</html>

