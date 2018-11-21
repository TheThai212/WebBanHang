<%@ Page Title="" Language="C#" MasterPageFile="~/QuanTri.master" AutoEventWireup="true" CodeFile="QuanTri_User.aspx.cs" Inherits="QuanTri_User" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Head" Runat="Server">

    <style type="text/css">
        .auto-style1 {
            width: 100%;
            border: 2px solid #000000;
        }
        .auto-style2 {
            left: 1px;
            top: 2px;
        }
        .auto-style3 {
            height: 22px;
        }
        .auto-style4 {
            height: 20px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main" Runat="Server">
    <div id="page-content-wrapper" class="auto-style2">
  
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [users]"></asp:SqlDataSource>
    
    
        <asp:GridView ID="GridView1" runat="server" 
            AutoGenerateColumns="False" 
            BackColor="White" BorderColor="#CC9966" 
            BorderStyle="None" BorderWidth="1px" CellPadding="4" 
            DataKeyNames="Id" Width="66%" 
            OnPageIndexChanging="GridView1_PageIndexChanging" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" PageSize="5" AllowPaging="True" AllowSorting="True" OnRowDataBound="GridView1_RowDataBound" OnSorting="GridView1_Sorting">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="true" SortExpression="Id" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Pass" HeaderText="Pass" SortExpression="Pass" />
                <asp:TemplateField ShowHeader="False">
                    <EditItemTemplate>
                        <asp:Button ID="Button1" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                        &nbsp;<asp:Button ID="Button2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Button ID="Button1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                        &nbsp;<asp:Button ID="Button2" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <EditItemTemplate>
                        <asp:CheckBox ID="CheckBox1" runat="server" />
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:CheckBox ID="CheckBox1" runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#330099" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            <SortedAscendingCellStyle BackColor="#FEFCEB" />
            <SortedAscendingHeaderStyle BackColor="#AF0101" />
            <SortedDescendingCellStyle BackColor="#F6F0C0" />
            <SortedDescendingHeaderStyle BackColor="#7E0000" />

        </asp:GridView>

        <asp:Button ID="btnDelete" runat="server" OnClick="btnDelete_Click" Text="Delete" />

        <br />
        
        <table class="auto-style1" width="50%" runat="server">
            <tr>
                <td class="auto-style4"></td>
                <td class="auto-style4" style="font-size:large;font-weight:bold">Thêm User</td>
            </tr>
            <tr>
                <td>Name</td>
                <td>
                    <div>
                        <asp:TextBox ID="txt_user" runat="server" Width="333px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_user" ErrorMessage="Chưa nhập tên!" ForeColor="Red" ValidationGroup="AddUser"></asp:RequiredFieldValidator>                        <asp:Label ID="txtLoi" runat="server" ForeColor="Red"></asp:Label>
                    </div>
                </td>
            </tr>
            <tr>
                <td>Password</td>
                <td>
                    <div>
                        <asp:TextBox ID="txt_pass" runat="server" Width="333px" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_pass" ErrorMessage="Chưa nhập Pass!" ForeColor="Red" ValidationGroup="AddUser"></asp:RequiredFieldValidator>
                    </div>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Re-Password</td>
                <td class="auto-style3">
                    <div>
                        <asp:TextBox ID="txt_repass" runat="server" Width="333px" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_repass" Display="Dynamic" ErrorMessage="Chưa nhập Re- password" ForeColor="Red" ValidationGroup="AddUser"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator3" runat="server" ErrorMessage="Phải nhập giống mật khẩu ở trên" ForeColor="Red" ControlToValidate="txt_repass" ControlToCompare="txt_pass" ValidationGroup="AddUser"></asp:CompareValidator>
                    </div>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <div>
                        <asp:Button ID="btn_save" runat="server" Text="Lưu" OnClick="btn_save_Click" ValidationGroup="AddUser"/>
                        <asp:Button ID="btn_huy" runat="server" Text="Hủy" OnClick="btn_huy_Click"  />
                    </div>
                </td>
            </tr>
        </table>
        </div>
 </div>
</asp:Content>

