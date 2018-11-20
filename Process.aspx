<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Process.aspx.cs" Inherits="Process" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [users]"></asp:SqlDataSource>
            
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Text="Welcome"></asp:Label>
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="True" Text="Label"></asp:Label>
            
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Width="406px">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Pass" HeaderText="Pass" SortExpression="Pass" />
                </Columns>
            </asp:GridView>
            <br />
            <asp:Button ID="btnLogOut" runat="server" OnClick="btnLogOut_Click" Text="LogOut" />
        </div>
    </form>
</body>
</html>
