<%@ Page Title="" Language="C#" MasterPageFile="~/QuanTri.master" AutoEventWireup="true" CodeFile="QuanTri_SanPham.aspx.cs" Inherits="QuanTri_SanPham" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            height: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main" Runat="Server">
    <div id="page-content-wrapper" class="auto-style2">
  
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [sanpham]"></asp:SqlDataSource>
        
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="masp" ForeColor="Black" Width="893px" AllowPaging="True" AllowSorting="True" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowCancelingEdit="GridView1_RowCancelingEdit1" OnRowDataBound="GridView1_RowDataBound" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" OnSorting="GridView1_Sorting">
            <Columns>
                <asp:BoundField DataField="masp" HeaderText="masp" ReadOnly="True" SortExpression="masp" />
                <asp:BoundField DataField="tensp" HeaderText="tensp" SortExpression="tensp" />
                <asp:BoundField DataField="motasp" HeaderText="motasp" SortExpression="motasp" />
                <asp:BoundField DataField="giasp" HeaderText="giasp" SortExpression="giasp" />
                <asp:BoundField DataField="hinhanhsp" HeaderText="hinhanhsp" SortExpression="hinhanhsp" />
                <asp:BoundField DataField="tinhtrang" HeaderText="tinhtrang" SortExpression="tinhtrang" />
                <asp:BoundField DataField="madm" HeaderText="madm" SortExpression="madm" />
                <asp:TemplateField ShowHeader="False">
                    <EditItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
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
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        
        <asp:Button ID="btnDelete" runat="server" OnClick="btnDelete_Click" Text="Delete" />
        
        <br />
        
        <table class="auto-style1" width="50%" runat="server">
            <tr>
                <td class="auto-style4"></td>
                <td class="auto-style4">Thêm Sản phẩm</td>
            </tr>
            <tr>
                <td>Mã sản phẩm</td>
                <td>
                    <div>
                        <asp:TextBox ID="txt_masp" runat="server" Width="333px"></asp:TextBox>
                        <asp:Label ID="txtLoi" runat="server" ForeColor="Red"></asp:Label>
                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txt_gia" ErrorMessage="Chưa nhập giá" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                    </div>
                </td>
            </tr>
            <tr>
                <td>Tên sản phẩm</td>
                <td>
                    <div>
                        <asp:TextBox ID="txt_tensp" runat="server" Width="333px"></asp:TextBox>
                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txt_tinhtrang" ErrorMessage="Chưa nhập" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                    </div>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Mô tả sản phẩm</td>
                <td class="auto-style3">
                    <div>
                        <asp:TextBox ID="txt_motasp" runat="server" Width="333px" Rows="4" TextMode="MultiLine"></asp:TextBox>
                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txt_madm" Display="Dynamic" ErrorMessage="Chưa nhập" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                    </div>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Giá sản phẩm</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txt_gia" runat="server"></asp:TextBox>
                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txt_gia" ErrorMessage="Chưa nhập giá" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Hình ảnh sản phẩm</td>
                <td class="auto-style3">
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Tình trạng</td>
                <td class="auto-style1">
                    <asp:TextBox ID="txt_tinhtrang" runat="server"></asp:TextBox>
                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txt_tinhtrang" ErrorMessage="Chưa nhập" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Mã Danh mục</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txt_madm" runat="server" ></asp:TextBox>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txt_madm" ErrorMessage="nhập trong khoảng 1-3" ForeColor="Red" MaximumValue="3" MinimumValue="1"></asp:RangeValidator>
                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txt_madm" Display="Dynamic" ErrorMessage="Chưa nhập" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <div>
                        <asp:Button ID="btn_save" runat="server" Text="Lưu" OnClick="btn_save_Click"/>
                        <asp:Button ID="btn_huy" runat="server" Text="Hủy" />
                    </div>
                </td>
            </tr>
        </table>
        </div>
 </div>
</asp:Content>

