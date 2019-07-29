<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CustBillDis.aspx.cs" Inherits="CustBillDis" %>

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
            left: 90px; position: absolute; top: 234px" Width="571px">Bill</asp:HyperLink>
      
   
      
        <asp:Image ID="Image2" runat="server" ImageAlign="Left" ImageUrl="~/images/LogoBtm.gif"
            Style="z-index: 103; left: 0px; position: absolute; top: 971px" />
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" BackColor="White"
            BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1"
            Font-Names="Verdana" Font-Size="Large" ForeColor="Black" GridLines="Horizontal"
            Height="350px" Style="z-index: 105; left: 88px; position: absolute; top: 294px"
            Width="567px">
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <Fields>
                <asp:BoundField DataField="billNo" HeaderText="billNo" SortExpression="billNo" />
                <asp:BoundField DataField="billDate" DataFormatString="{0:d}" HeaderText="billDate"
                    SortExpression="billDate" />
                <asp:BoundField DataField="uName" HeaderText="uName" SortExpression="uName" />
                <asp:BoundField DataField="CabNo" HeaderText="CabNo" SortExpression="CabNo" />
                <asp:BoundField DataField="Qty" HeaderText="Qty" SortExpression="Qty" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                <asp:BoundField DataField="totAmt" HeaderText="totAmt" SortExpression="totAmt" />
            </Fields>
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <EditRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
            SelectCommand="SELECT [billNo], [billDate], [uName], [CabNo], [Qty], [Price], [totAmt] FROM [CabBillingTab] WHERE ([billNo] = @billNo)">
            <SelectParameters>
                <asp:SessionParameter Name="billNo" SessionField="b1Var" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
     
    </div>
    </form>
</body>
</html>

