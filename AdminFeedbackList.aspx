<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AdminFeedbackList.aspx.cs" Inherits="AdminFeedbackList" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


  <asp:HyperLink ID="HyperLink3" runat="server" Font-Bold="False" Font-Names="Arial Black"
            ForeColor="#C04000" NavigateUrl="~/AdminMainPage.aspx" Style="z-index: 101; left: 0px;
            position: absolute; top: 160px">Home</asp:HyperLink>
        <asp:HyperLink ID="HyperLink1" runat="server" BackColor="Maroon" Font-Bold="False"
            Font-Names="Arial Black" Font-Size="XX-Large" ForeColor="#FF80FF" Style="z-index: 102;
            left: 185px; position: absolute; top: 202px" Width="838px">Customer Feedback List</asp:HyperLink>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
            BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2"
            DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="None" Style="z-index: 105;
            left: 186px; position: absolute; top: 271px" Width="833px" Height="425px">
            <Columns>
                <asp:BoundField DataField="Heading" HeaderText="Heading" SortExpression="Heading" />
                <asp:BoundField DataField="details" HeaderText="details" SortExpression="details" />
                <asp:BoundField DataField="fbDate" DataFormatString="{0:d}" HeaderText="fbDate" SortExpression="fbDate" />
            </Columns>
            <FooterStyle BackColor="Tan" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
            SelectCommand="SELECT [Heading], [details], [fbDate] FROM [FeedbackTab] ORDER BY [fbNo] DESC">
        </asp:SqlDataSource>
        <asp:Image ID="Image2" runat="server" ImageAlign="Left" ImageUrl="~/images/LogoBtm.gif"
            Style="z-index: 104; left: 0px; position: absolute; top: 971px" />
</asp:Content>

