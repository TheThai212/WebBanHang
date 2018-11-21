<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Camera.aspx.cs" Inherits="Camera" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main" Runat="Server">
    <!-- breadcrumbs -->
		<div class="breadcrumbs">
			<div class="container">
				<ol class="breadcrumb breadcrumb--ys pull-left">
					<li class="home-link"><a href="TrangChu.aspx" class="icon icon-home"></a></li>
					<li><a href="#">Camera</a></li>
				</ol>
			</div>
		</div>
		<!-- /breadcrumbs -->
    <!-- CONTENT section -->
		<div id="pageContent">
			<div class="container">
					<!-- center column -->
					<aside class="col-md-12 col-lg-12 col-xl-12" id="centerColumn">
						<!-- title -->
						<div class="title-box">
							<h2 class="text-center text-uppercase title-under">Camera’s</h2>
						</div>
						<!-- /title -->												
                        <div class="product-listing row">
                            <asp:DataList ID="DataList1" runat="server" RepeatColumns="4" RepeatDirection="Horizontal">
                                <ItemStyle CssClass="col-xs-6 col-sm-4 col-md-4 col-lg-3 col-xl-2" />
                                <ItemTemplate>
                                    <!-- product -->
                                    <div class="product product--zoom">
										<div class="product__inside">
											<!-- product image -->
											<div class="product__inside__image">
												<a href="product.html"> <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("hinhanhsp") %>' /> </a> 
												<!-- quick-view --> 
												<a href="#" data-toggle="modal" data-id="<%# Eval("masp") %>" data-target="#quickViewModal" class="quick-view"><b><span class="icon icon-visibility"></span> Quick view</b> </a> 
												<!-- /quick-view --> 
											</div>
											<!-- /product image --> 
											<!-- product name -->
											<div class="product__inside__name">
												<h2><a href="product.html"> <asp:Label ID="Label1" runat="server" Text='<%# Eval("tensp") %>'></asp:Label> </a></h2>
											</div>
											<!-- /product name -->                 <!-- product description --> 
											<!-- visible only in row-view mode -->
											<div class="product__inside__description row-mode-visible"> <asp:Label ID="Label2" runat="server" Text='<%# Eval("motasp") %>'></asp:Label>  </div>
											<!-- /product description -->                 <!-- product price -->
											<div class="product__inside__price price-box"> <asp:Label ID="Label3" runat="server" Text='<%# Eval("giasp") %>'></asp:Label> </div>
											<!-- /product price --> 
											<!-- product review --> 
											<!-- visible only in row-view mode -->
											<div class="product__inside__review row-mode-visible">
												<div class="rating row-mode-visible"> <span class="icon-star"></span> <span class="icon-star"></span> <span class="icon-star"></span> <span class="icon-star"></span> <span class="icon-star empty-star"></span> </div>
												<a href="#">1 Review(s)</a> <a href="#">Add Your Review</a> 
											</div>
											<!-- /product review --> 
											<div class="product__inside__hover">
												<!-- product info -->
												<div class="product__inside__info">
													<div class="product__inside__info__btns"> <a href="#" class="btn btn--ys btn--xl"><span class="icon icon-shopping_basket"></span> Add to cart</a>
													<a href="#" class="btn btn--ys btn--xl visible-xs"><span class="icon icon-favorite_border"></span></a>
													<a href="#" class="btn btn--ys btn--xl visible-xs"><span class="icon icon-sort"></span></a>
													<a href="#" class="btn btn--ys btn--xl  row-mode-visible hidden-xs"><span class="icon icon-visibility"></span> Quick view</a> </div>
													<ul class="product__inside__info__link hidden-xs">
														<li class="text-right"><span class="icon icon-favorite_border  tooltip-link"></span><a href="#"><span class="text">Add to wishlist</span></a></li>
														<li class="text-left"><span class="icon icon-sort  tooltip-link"></span><a href="#" class="compare-link"><span class="text">Add to compare</span></a></li>
													</ul>
												</div>
												<!-- /product info --> 
												<!-- product rating -->
												<div class="rating row-mode-hide"> <span class="icon-star"></span> <span class="icon-star"></span> <span class="icon-star"></span> <span class="icon-star"></span> <span class="icon-star empty-star"></span> </div>
												<!-- /product rating --> 
											</div>
										</div>
									</div>
                                    <!-- /product -->

                                </ItemTemplate>
                            </asp:DataList>
                        </div>
						<!-- filters row -->
						<div class="filters-row filters-row-layout border-top-none">							
							<div class="pull-left col-xs-12 col-sm-12 col-md-5">
								<div class="filters-row__mode">									
									<a class="filters-row__view active link-grid-view btn-img btn-img-view_module"><span></span></a> 
									<a class="filters-row__view link-row-view btn-img btn-img-view_list"><span></span></a> 
								</div>
								<div class="filters-row__select hidden-xs">
									<label>Sort by: </label>
									<div class="select-wrapper">
										<select class="select--ys sort-position">
											<option>Position</option>
											<option>Price</option>
											<option>Rating</option>
										</select>
									</div>
									<a href="#" class="sort-direction icon icon-arrow_back"></a> 
								</div>
							</div>
							<div class="col-sm-12 col-xs-12 col-md-2 text-center">
								<a href="#" class="btn btn--ys slide-column-open">Filter</a> 
							</div>
							<div class="pull-right col-xs-12 col-sm-12 col-md-5 text-right">
								<div class="filters-row__items hidden-sm hidden-xs">28 Item(s)</div>
								<div class="filters-row__select hidden-sm hidden-xs">
									<label>Show: </label>
									<div class="select-wrapper">
										<select class="select--ys show-qty">
											<option>25</option>
											<option>50</option>
											<option>100</option>
										</select>
									</div>
									<a href="#" class="icon icon-arrow-down active"></a><a href="#" class="icon icon-arrow-up"></a> 
								</div>
								<div class="filters-row__pagination">
									<ul class="pagination">
										<li class="active"><a href="#">1</a></li>
										<li><a href="#">2</a></li>
										<li><a href="#">3</a></li>
										<li><a href="#"><span class="icon icon-chevron_right"></span></a></li>
									</ul>
								</div>
							</div>							
						</div>
						<!-- /filters row --> 
					</aside>
					<!-- center column --> 
			</div>
		</div>
		<!-- End CONTENT section -->
</asp:Content>

