<%@ Page Title="" Language="C#" MasterPageFile="~/Quantri2.master" AutoEventWireup="true" CodeFile="QuanTri2_TrangChu.aspx.cs" Inherits="QuanTri2_TrangChu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main" Runat="Server">
            <!-- Content Header (Page header) -->
            <section class="content-header">
                <h1>
                    Data Tables
                    <small>advanced tables</small>
                </h1>
                <ol class="breadcrumb">
                    <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
                    <li><a href="#">Tables</a></li>
                    <li class="active">Data tables</li>
                </ol>
            </section>

            <!-- Main content -->
            <section class="content">
                <div class="row">
                    <div class="col-xs-12">
                        <div class="box">
                            <div class="box-header">
                                <h3 class="box-title">Bảng danh mục</h3>
                            </div>
                            <!-- /.box-header -->
                            <div class="box-body">
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [danhmuc]"></asp:SqlDataSource>
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="madm" DataSourceID="SqlDataSource1" Width="80%" HorizontalAlign="Center" CellSpacing="2" PageSize="3">
                                    <Columns>
                                        <asp:BoundField DataField="madm" HeaderText="madm" ReadOnly="True" SortExpression="madm" />
                                        <asp:BoundField DataField="tendm" HeaderText="tendm" SortExpression="tendm" />
                                        <asp:BoundField DataField="motadm" HeaderText="motadm" SortExpression="motadm" />
                                        <asp:TemplateField HeaderText="Image" SortExpression="hinhanhdm" ItemStyle-HorizontalAlign="Center">
                                            <ItemTemplate>
                                                <asp:Image ID="Image1" runat="server" Width="150px" Height="150px"
                                                    ImageUrl='<%# Eval("hinhanhdm")%>' />
                                            </ItemTemplate>

<ItemStyle HorizontalAlign="Center"></ItemStyle>
                                        </asp:TemplateField>
                                    </Columns>
                                    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                                    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                                    <SortedAscendingCellStyle BackColor="#FFF1D4" />
                                    <SortedAscendingHeaderStyle BackColor="#B95C30" />
                                    <SortedDescendingCellStyle BackColor="#F1E5CE" />
                                    <SortedDescendingHeaderStyle BackColor="#93451F" />
                                </asp:GridView>
                            </div>
                            <!-- /.box-body -->
                        </div>
                        <!-- /.box -->

                        <div class="box">
                            <div class="box-header">
                                <h3 class="box-title">Bảng sản phẩm</h3>
                            </div>
                            <!-- /.box-header -->
                            <div class="box-body">
                                <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="masp" DataSourceID="SqlDataSource2" Width="80%" CellSpacing="2" PageSize="4" HorizontalAlign="Center">
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
                                    </Columns>
                                    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                                    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                                    <SortedAscendingCellStyle BackColor="#FFF1D4" />
                                    <SortedAscendingHeaderStyle BackColor="#B95C30" />
                                    <SortedDescendingCellStyle BackColor="#F1E5CE" />
                                    <SortedDescendingHeaderStyle BackColor="#93451F" />
                                </asp:GridView>
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [sanpham]"></asp:SqlDataSource>
                            </div>
                            <!-- /.box-body -->
                        </div>
                        <!-- /.box -->
                    </div>
                    <!-- /.col -->
                </div>
                <!-- /.row -->
            </section>
            <!-- /.content -->
</asp:Content>

