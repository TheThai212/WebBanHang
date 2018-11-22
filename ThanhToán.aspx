<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ThanhToán.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main" Runat="Server">
	<div class="container">
	  <div class="title-box">
				<h1 class="text-center text-uppercase title-under">Thanh Toán
				</h1>
				</div>
		        <table class="table-order-history">
	              <thead>
	                <tr>
	                  <th>Mã Sản Phẩm</th>
	                  <th>Tên Sản Phẩm</th>
	                  <th>Số Lượng</th>
	                  <th>Giá</th>
	                  <th>Tổng</th>
	                </tr>
	              </thead>
	              <tbody>
	                <tr>
	                  <td><div class="th-title visible-xs">Order</div><a href="#">#1021</a></td>
	                  <td><div class="th-title visible-xs">Date</div>15 Sep 15:31</td>
	                  <td><div class="th-title visible-xs">Payment Status</div>Pending</td>
	                  <td><div class="th-title visible-xs">Fulfillment Status</div>Unfulfilled</td>
	                  <td><div class="th-title visible-xs">Total</div>$708.00</td>
	                </tr>
                      <tr>
	                  <td><div class="th-title visible-xs">Order</div><a href="#">#1021</a></td>
	                  <td><div class="th-title visible-xs">Date</div>15 Sep 15:31</td>
	                  <td><div class="th-title visible-xs">Payment Status</div>Pending</td>
	                  <td><div class="th-title visible-xs">Fulfillment Status</div>Unfulfilled</td>
	                  <td><div class="th-title visible-xs">Total</div>$708.00</td>
	                </tr>
                      <tr>
	                  <td><div class="th-title visible-xs">Order</div><a href="#">#1021</a></td>
	                  <td><div class="th-title visible-xs">Date</div>15 Sep 15:31</td>
	                  <td><div class="th-title visible-xs">Payment Status</div>Pending</td>
	                  <td><div class="th-title visible-xs">Fulfillment Status</div>Unfulfilled</td>
	                  <td><div class="th-title visible-xs">Total</div>$708.00</td>
	                </tr>
	              </tbody>
	            </table>
        </div>
		<div id="pageContent">
			<div class="container">				
				
				<div class="row">
					<!--================= col-left =================-->
					<div class="col-md-12 col-lg-4">
						<!-- NAME & ADDRESS -->
						<h2 class="title-checkout">
							<span class="icon icon-person icon-large color"></span>
							Bạn Vui Lòng Điền Đầy Đủ Thông Tin
						</h2>
                        <form>
                            <!-- row-col-2 -->
                            <div class="row">
                                <div class="col-md-12 col-lg-12 col-xl-6">
                                    <div class="form-group">
                                        <label for="checkoutFormFirstName">Họ Tên <sup>*</sup></label>
                                        <input type="text" class="form-control" id="checkoutFormFirstName">
                                    </div>
                                    </div>
                                  <div class="col-md-12 col-lg-12 col-xl-6">
                                    <div class="form-group">
                                        <label for="checkoutFormFirstName">Số Điện Thoại <sup>*</sup></label>
                                        <input type="text" class="form-control" id="checkoutFormSDT">
                                    </div>

                                </div>
                                <div class="col-md-12 col-lg-12 col-xl-6">
                                    <div class="form-group">
                                        <span class="note pull-right">* Required Fields</span>
                                        <label for="checkoutFormLastName">Năm Sinh  <sup>*</sup></label>
                                        <input type="text" class="form-control" id="checkoutFormLastName">
                                    </div>
                                    
                                
                                    <div class="form-group">
                                        <label for="checkoutFormEmailAddress">Email  <sup>*</sup></label>
                                        <input type="email" class="form-control" id="checkoutFormEmailAddress">
                                    </div>
                                </div>
                            </div>
                            <!-- /row-col-2 -->
                            <div class="form-group">
                                <label for="checkoutFormAddress11">Địa Chỉ Hiện Tại<sup>*</sup></label>
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control" id="checkoutFormAddress22">
                            </div>
                            <!-- row-col-2 -->

                            <!-- /row-col-2 -->

                        </form>
						<!-- /NAME & ADDRESS  -->
						<!-- SHIPPING ADDRESS -->
						
							<!-- /row-col-2 -->
						<!-- /SHIPPING ADDRESS -->
					</div>
					<!--================= /col-left =================-->
					<!--================= col-center =================-->
					<div class="col-md-12 col-lg-4">
						<!-- SHIPPING METHOD -->
						<h2 class="title-checkout">
							<span class="icon color icon-local_shipping"></span>
							Phương Thức Giao Hàng
						</h2>
						<form >
							<h6 class="color">Nếu bạn nhận hàng trong phạm vi nội thành</h6>
							<div class="divider--md"></div>
							<div class="checkbox-group clearfix">
			                  <input type="checkbox" id="checkBox3">
			                  <label for="checkBox3"> 
			                  	<span class="check"></span>
			                  	<span class="box"></span>
			                  	Nội Thành
			                  </label>
			                </div>							
						    <h6 class="color">Nếu bạn nhận hàng trong phạm vi ngoại thành</h6>
						    <div class="divider--md"></div>
							<div class="checkbox-group clearfix">
			                  <input type="checkbox" id="checkBox4">
			                  <label for="checkBox4"> 
			                  	<span class="check"></span>
			                  	<span class="box"></span>
			                  	COD
			                  </label>
			                </div>									
						     <p>
						     	Bạn vui lòng điền địa chỉ nhận hàng
						     </p>
						     <div class="form-group">
							    <label for="checkoutFormFrom">Tới </label>
							    <input type="text" class="form-control" id="checkoutFormFrom">
							</div>
							
							<div class="form-group">
							    <label for="checkoutFormMessage">Ghi chú thêm</label>
							    <textarea class="form-control" id="checkoutFormMessage" rows="6"></textarea>							   
							</div>
								<!-- /Discount Codes -->
					</div>
					<!--================= /col-center =================-->
					<!--================= col-right =================-->
					<div class="col-md-12 col-lg-4">
						<!-- Payment Method -->
						<h2 class="title-checkout">
							<span class="icon icon-account_balance_wallet color"></span>
							Phương Thức Thanh Toán
						</h2>
						<!-- /Payment Method -->
						<div class="form-group form-group-top clearfix">
					     	<label class="radio">
	                       		<input id="radio1" type="radio" name="radios">
	                        	<span class="outer">
	                        		<span class="inner"></span>
	                        	</span>
	                        	Thanh Toán Tiền Mặt
	                        </label>
					    </div>
					    <div class="form-group clearfix">								      	  						      
	                          <label class="radio">
	                            <input id="radio2" type="radio" name="radios" checked>
	                            <span class="outer">
	                            	<span class="inner"></span>
	                            </span>
	                            Thanh Toán Qua Thẻ
	                          </label>
					    </div>
					    <div class="form-group">
						    <label for="checkoutFormNameOnCard">Tên Chủ Thẻ <sup>*</sup></label>
						    <input type="text" class="form-control" id="checkoutFormNameOnCard">
						</div>
						<div class="form-group">
						    <label for="checkoutFormCreditCartType">Ngân hàng <sup>*</sup></label>
						    <select  id="checkoutFormCreditCartType" class="form-control selectpicker "  data-style="select--ys"  data-width="100%">                  
								<option>Vietcombank</option>	
                                <option>Techcombank</option>
                                <option>BIDV</option>
			                </select>
						</div>
						<div class="form-group">
						    <label for="checkoutFormCreditCartNumber">Số Thẻ<sup>*</sup></label>
						    <input type="text" class="form-control" id="checkoutFormCreditCartNumber">
						</div>
						
						<!-- /row-col-2 -->
						
						<!-- GRAND TOTAL -->
						<div class="card card--padding fill-bg">
							<table class="table-total-checkout">								
								<tbody>
									<tr>
										<th>TỔNG</th>
										<td>$56.00</td>
									</tr>
								</tbody>
							</table>
							<a href="#" class="btn btn--ys btn--full btn--xl">THANH TOÁN <span class="icon icon-reply icon--flippedX"></span></a>							
						</div>
						<!-- /GRAND TOTAL -->
					</div>
					<!--================= /col-right =================-->			
				</div>								
			</div>
		</div>
		<!-- End CONTENT section --> 
		<!-- FOOTER section -->
		
</asp:Content>
            