<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CustMainPage.aspx.cs" Inherits="CustMainPage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Online Cab Booking System</title>
</head>
<body bgcolor="#ccccff">
    <form id="form1" runat="server">
    <div>
        <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/Logo1.bmp" Style="z-index: 100;
            left: 0px; position: absolute; top: 0px" Height="150px" Width="1366px" />
        <asp:Image ID="Image3" runat="server" Height="485px" ImageUrl="~/Images/aaa5.jpg"
            Style="z-index: 101; left: 611px; position: absolute; top: 172px" Width="698px" />
        &nbsp;
        &nbsp;&nbsp;
        <asp:Image ID="Image2" runat="server" ImageAlign="Left" ImageUrl="~/Images/LogoBtm.gif"
            Style="z-index: 102; left: 0px; position: absolute; top: 954px" />
        &nbsp;
        
        <asp:HyperLink ID="HyperLink3" runat="server" Font-Bold="False" Font-Names="Arial Black"
            ForeColor="#C04000" NavigateUrl="~/Default.aspx" Style="z-index: 103; left: 1px;
            position: absolute; top: 161px">Home</asp:HyperLink>
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        <asp:HyperLink ID="HyperLink8" runat="server" BackColor="Black" BorderColor="Maroon"
            BorderStyle="Solid" BorderWidth="3px" Font-Bold="True" Font-Names="Comic Sans MS"
            Font-Size="X-Large" ForeColor="#FFC0FF" Height="35px" NavigateUrl="~/CustPlaceList.aspx"
            Style="z-index: 104; left: 155px; position: absolute; top: 176px" Width="286px">Place Names List</asp:HyperLink>
        <asp:HyperLink ID="HyperLink1" runat="server" BackColor="Black" BorderColor="Maroon"
            BorderStyle="Solid" BorderWidth="3px" Font-Bold="True" Font-Names="Comic Sans MS"
            Font-Size="X-Large" ForeColor="#FFC0FF" Height="35px" NavigateUrl="~/CustVehicleList.aspx"
            Style="z-index: 105; left: 155px; position: absolute; top: 232px" Width="286px">Vehicle List</asp:HyperLink>
        <asp:HyperLink ID="HyperLink2" runat="server" BackColor="Black" BorderColor="Maroon"
            BorderStyle="Solid" BorderWidth="3px" Font-Bold="True" Font-Names="Comic Sans MS"
            Font-Size="X-Large" ForeColor="#FFC0FF" Height="35px" NavigateUrl="~/CustDriverList.aspx"
            Style="z-index: 106; left: 155px; position: absolute; top: 288px" Width="286px">Driver List</asp:HyperLink>
        <asp:HyperLink ID="HyperLink4" runat="server" BackColor="Black" BorderColor="Maroon"
            BorderStyle="Solid" BorderWidth="3px" Font-Bold="True" Font-Names="Comic Sans MS"
            Font-Size="X-Large" ForeColor="#FFC0FF" Height="35px" NavigateUrl="~/CustBook1.aspx"
            Style="z-index: 107; left: 155px; position: absolute; top: 344px" Width="286px">Book Vehicle</asp:HyperLink>
        <asp:HyperLink ID="HyperLink7" runat="server" BackColor="Black" BorderColor="Maroon"
            BorderStyle="Solid" BorderWidth="3px" Font-Bold="True" Font-Names="Comic Sans MS"
            Font-Size="X-Large" ForeColor="#FFC0FF" Height="35px" NavigateUrl="~/CustBookingList.aspx"
            Style="z-index: 108; left: 155px; position: absolute; top: 400px" Width="286px">Booking List</asp:HyperLink>
        &nbsp;
        <asp:HyperLink ID="HyperLink5" runat="server" BackColor="Black" BorderColor="Maroon"
            BorderStyle="Solid" BorderWidth="3px" Font-Bold="True" Font-Names="Comic Sans MS"
            Font-Size="X-Large" ForeColor="#FFC0FF" Height="40px" NavigateUrl="~/Default.aspx"
            Style="z-index: 109; left: 154px; position: absolute; top: 575px" Width="286px">Logout</asp:HyperLink>
        <asp:HyperLink ID="HyperLink6" runat="server" BackColor="Black" BorderColor="Maroon"
            BorderStyle="Solid" BorderWidth="3px" Font-Bold="True" Font-Names="Comic Sans MS"
            Font-Size="X-Large" ForeColor="#FFC0FF" Height="35px" NavigateUrl="~/CustBillList.aspx"
            Style="z-index: 110; left: 155px; position: absolute; top: 456px" Width="286px">Billing List</asp:HyperLink>
        <asp:HyperLink ID="HyperLink9" runat="server" BackColor="Black" BorderColor="Maroon"
            BorderStyle="Solid" BorderWidth="3px" Font-Bold="True" Font-Names="Comic Sans MS"
            Font-Size="X-Large" ForeColor="#FFC0FF" Height="35px" NavigateUrl="~/CustFeedback.aspx"
            Style="z-index: 112; left: 154px; position: absolute; top: 513px" Width="286px">Feedback Form</asp:HyperLink>
    
    </div>
    </form>
</body>
</html>
