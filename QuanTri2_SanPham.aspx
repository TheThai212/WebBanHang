<%@ Page Title="" Language="C#" MasterPageFile="~/Quantri2.master" AutoEventWireup="true" CodeFile="QuanTri2_SanPham.aspx.cs" Inherits="QuanTri2_SanPham" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            height: 20px;
            margin-left: 25%;
        }
        .auto-style2 {
            height: 33px;
        }
        .auto-style3 {
            margin-left: 15%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main" Runat="Server">
    <div id="page-content-wrapper" class="auto-style2">
  
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [sanpham]"></asp:SqlDataSource>
        
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="masp" Width="893px" AllowPaging="True" AllowSorting="True" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowCancelingEdit="GridView1_RowCancelingEdit1" OnRowDataBound="GridView1_RowDataBound" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" OnSorting="GridView1_Sorting" GridLines="Vertical" HorizontalAlign="Center" Height="48%" PageSize="3">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:BoundField DataField="masp" HeaderText="masp" ReadOnly="True" SortExpression="masp" />
                <asp:BoundField DataField="tensp" HeaderText="tensp" SortExpression="tensp" />
                <asp:BoundField DataField="motasp" HeaderText="motasp" SortExpression="motasp" />
                <asp:BoundField DataField="giasp" HeaderText="giasp" SortExpression="giasp" />
                <asp:TemplateField HeaderText="Image" SortExpression="hinhanhsp" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="NotSet">
                    <ItemTemplate>
                        <asp:Image ID="Image2" runat="server" Width="150px" Height="150px"
                            ImageUrl='<%# Eval("hinhanhsp")%>' />
                    </ItemTemplate>

                    <ItemStyle HorizontalAlign="Center"></ItemStyle>
                </asp:TemplateField>
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
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#0000A9" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#000065" />
        </asp:GridView>
        
        <%--<asp:Button ID="btnDelete" runat="server" OnClick="btnDelete_Click" Text="Delete" CssClass="auto-style3" />--%>
        
        <br />
        
        <table class="auto-style1" width="50%" runat="server">
            <tr>
                <td class="auto-style2"></td>
                <td class="auto-style2" style="font-size:large;font-weight:bold">Thêm Sản phẩm</td>
            </tr>
            <tr>
                <td>Mã sản phẩm</td>
                <td>
                    <div>
                        <asp:TextBox ID="txt_masp" runat="server" Width="333px"></asp:TextBox>
                        <asp:Label ID="txtLoi" runat="server" ForeColor="Red"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txt_masp" ErrorMessage="Chưa nhập mã sản phẩm" ForeColor="Red" ValidationGroup="ThemSp"></asp:RequiredFieldValidator>
                    </div>
                </td>
            </tr>
            <tr>
                <td>Tên sản phẩm</td>
                <td>
                    <div>
                        <asp:TextBox ID="txt_tensp" runat="server" Width="333px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txt_tensp" ErrorMessage="Chưa nhập tên sản phẩm " ForeColor="Red" ValidationGroup="ThemSp"></asp:RequiredFieldValidator>
                    </div>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Mô tả sản phẩm</td>
                <td class="auto-style3">
                    <div>
                        <asp:TextBox ID="txt_motasp" runat="server" Width="333px" Rows="4" TextMode="MultiLine"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txt_motasp" Display="Dynamic" ErrorMessage="Chưa nhập mô tả sản phẩm" ForeColor="Red" ValidationGroup="ThemSp"></asp:RequiredFieldValidator>
                    </div>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Giá sản phẩm</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txt_gia" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txt_gia" ErrorMessage="Chưa nhập giá" ForeColor="Red" ValidationGroup="ThemSp"></asp:RequiredFieldValidator>
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
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txt_tinhtrang" ErrorMessage="Chưa nhập" ForeColor="Red" ValidationGroup="ThemSp"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Mã Danh mục</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txt_madm" runat="server" ></asp:TextBox>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txt_madm" ErrorMessage="Nhập trong khoảng 1-3" ForeColor="Red" MaximumValue="3" MinimumValue="1" ValidationGroup="ThemSp"></asp:RangeValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txt_madm" Display="Dynamic" ErrorMessage="Chưa nhập mã danh mục" ForeColor="Red" ValidationGroup="ThemSp"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <div>
                        <asp:Button ID="btn_save" runat="server" Text="Lưu" OnClick="btn_save_Click" ValidationGroup="ThemSp"/>
                        <asp:Button ID="btn_huy" runat="server" Text="Hủy" OnClick="btn_huy_Click" />
                    </div>
                </td>
            </tr>
        </table>
        </div>
 </div>
</asp:Content>
