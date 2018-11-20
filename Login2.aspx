<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login2.aspx.cs" Inherits="Login2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="txtName" runat="server" Text="UserName"></asp:Label>
        <asp:TextBox ID="LoginFormName" runat="server" Width="182px"></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" ControlToValidate="LoginFormName" ForeColor="Red"  ErrorMessage="(*) Username field is required."></asp:RequiredFieldValidator>
        <br />
            <asp:Label ID="txtPass" runat="server" Text="PassWord"></asp:Label>
            <asp:TextBox ID="LoginFormPass" runat="server" TextMode="Password" Width="182px"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="LoginFormPass" ForeColor="Red" ErrorMessage="(*) Password field is required."></asp:RequiredFieldValidator>
       <br />
        <asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" Text="Login" />
        <asp:Label ID="Label3" runat="server" ForeColor="Red"></asp:Label>
    </form>
</body>
</html>
