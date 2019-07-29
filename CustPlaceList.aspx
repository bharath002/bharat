<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CustPlaceList.aspx.cs" Inherits="CustPlaceList" %>

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
            left: 185px; position: absolute; top: 202px" Width="838px">Car Service to  Place details</asp:HyperLink>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
            BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2"
            DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="None" Style="z-index: 105;
            left: 186px; position: absolute; top: 271px" Width="833px" Height="425px">
            <Columns>
                <asp:BoundField DataField="PlaceName" HeaderText="PlaceName" SortExpression="PlaceName" />
                <asp:BoundField DataField="pDetails" HeaderText="pDetails" SortExpression="pDetails" />
                
            </Columns>
            <FooterStyle BackColor="Tan" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
            SelectCommand="SELECT * FROM [PlaceNameTab] ORDER BY [PlaceName]">
        </asp:SqlDataSource>
        <asp:Image ID="Image2" runat="server" ImageAlign="Left" ImageUrl="~/images/LogoBtm.gif"
            Style="z-index: 104; left: 0px; position: absolute; top: 971px" />
     
    </div>
    </form>
</body>
</html>

