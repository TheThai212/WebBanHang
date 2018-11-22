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
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="madm" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" Width="80%">
                                    <AlternatingRowStyle BackColor="White" />
                                    <Columns>
                                        <asp:BoundField DataField="madm" HeaderText="madm" ReadOnly="True" SortExpression="madm" />
                                        <asp:BoundField DataField="tendm" HeaderText="tendm" SortExpression="tendm" />
                                        <asp:BoundField DataField="motadm" HeaderText="motadm" SortExpression="motadm" />
                                        <asp:BoundField DataField="hinhanhdm" HeaderText="hinhanhdm" SortExpression="hinhanhdm" />
                                    </Columns>
                                    <FooterStyle BackColor="#CCCC99" />
                                    <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                                    <RowStyle BackColor="#F7F7DE" />
                                    <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                                    <SortedAscendingCellStyle BackColor="#FBFBF2" />
                                    <SortedAscendingHeaderStyle BackColor="#848384" />
                                    <SortedDescendingCellStyle BackColor="#EAEAD3" />
                                    <SortedDescendingHeaderStyle BackColor="#575357" />
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
                                <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="masp" DataSourceID="SqlDataSource2" ForeColor="Black" GridLines="Vertical" Width="80%">
                                    <AlternatingRowStyle BackColor="White" />
                                    <Columns>
                                        <asp:BoundField DataField="masp" HeaderText="masp" ReadOnly="True" SortExpression="masp" />
                                        <asp:BoundField DataField="tensp" HeaderText="tensp" SortExpression="tensp" />
                                        <asp:BoundField DataField="motasp" HeaderText="motasp" SortExpression="motasp" />
                                        <asp:BoundField DataField="giasp" HeaderText="giasp" SortExpression="giasp" />
                                        <asp:BoundField DataField="hinhanhsp" HeaderText="hinhanhsp" SortExpression="hinhanhsp" />
                                        <asp:BoundField DataField="tinhtrang" HeaderText="tinhtrang" SortExpression="tinhtrang" />
                                        <asp:BoundField DataField="madm" HeaderText="madm" SortExpression="madm" />
                                    </Columns>
                                    <FooterStyle BackColor="#CCCC99" />
                                    <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                                    <RowStyle BackColor="#F7F7DE" />
                                    <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                                    <SortedAscendingCellStyle BackColor="#FBFBF2" />
                                    <SortedAscendingHeaderStyle BackColor="#848384" />
                                    <SortedDescendingCellStyle BackColor="#EAEAD3" />
                                    <SortedDescendingHeaderStyle BackColor="#575357" />
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

