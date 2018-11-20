<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="LienHe.aspx.cs" Inherits="Lienhe" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main" Runat="Server">
    <!-- breadcrumbs -->
		<div class="breadcrumbs">
			<div class="container">
				<ol class="breadcrumb breadcrumb--ys pull-left">
					<li class="home-link"><a href="TrangChu.aspx" class="icon icon-home"></a></li>										
					<li class="active">Liên hệ</li>
				</ol>
			</div>
		</div>
		<!-- /breadcrumbs --> 
		<!-- CONTENT section -->
		<div id="pageContent">
			<section class="container">				
				<div class="row">
					<div class="col-md-3 col-sm-12">
						<h2 class="text-uppercase title-bottom">CONTACTs</h2>
						<ul class="list-icon">
							<li>
								<span class="icon icon-home"></span>
								<strong>Address :</strong> 96 Định Công, Hoàng Mai, Hà Nội.
							</li>
							<li>
								<span class="icon icon-call"></span>
								<strong>Phone:</strong> +777 2345 7885
							</li>
							<li>
								<span class="fa fa-fax"></span>
								<strong>Fax:</strong> +777 2345 7886
							</li>
							<li>
								<span class="icon icon-schedule"></span>
								<strong>Hours:</strong> 7 Days a week from  10:00 am to 6:00 pm
							</li>
							<li>
								<span class="icon icon-mail"></span>
								<strong>E-mail:</strong> <a class="color" href="mailto:info@gmail.com">info@gmail.com</a>
							</li>
						</ul>
						<div class="divider divider--sm"></div>
						<div class="social-links social-links--large">
							<ul>
								<li><a class="icon fa fa-facebook" href="http://www.facebook.com/"></a></li>
								<li><a class="icon fa fa-twitter" href="http://www.twitter.com/"></a></li>
								<li><a class="icon fa fa-google-plus" href="http://www.google.com/"></a></li>
								<li><a class="icon fa fa-instagram" href="https://instagram.com/"></a></li>
								<li><a class="icon fa fa-youtube-square" href="https://www.youtube.com/"></a></li>
							</ul>
						</div>
					</div>
					<div class="col-md-9  col-sm-12">
						<div class="divider divider--lg visible-xs"></div>
						<h2 class="text-uppercase title-bottom">GET IN TOUCH WITH US</h2>
                        <div class="contact-form">
                            <!-- input -->
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="inputName">Name <sup>*</sup></label>
                                        <asp:TextBox ID="inputName" runat="server" CssClass="form-control"></asp:TextBox>
                                        <%--<input type="text" class="form-control" id="inputName">--%>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Bạn chưa điền tên" ControlToValidate="inputName" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                                        
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="inputEmail">Email <sup>*</sup></label>
                                        <asp:TextBox ID="inputEmail" runat="server" CssClass="form-control"></asp:TextBox>
                                        <%--<input type="email" class="form-control" id="inputEmail">--%>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Bạn chưa điền gmail" ControlToValidate="inputEmail" ForeColor="Red"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Nhập sai Email" ControlToValidate="inputEmail" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="inputPhone">Phone </label>
                                        <asp:TextBox ID="inputPhone" runat="server" CssClass="form-control"></asp:TextBox>
                                        <%--<input type="text" class="form-control" id="inputPhone">--%>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Nhập sai!" ControlToValidate="inputPhone" ForeColor="Red"></asp:RegularExpressionValidator>
                                    </div>
                                </div>
                            </div>
                            <!-- /input -->
                            <!-- textarea -->
                            <div class="form-group">
                                <label for="textareaMessage">Message <sup>*</sup></label>
                                <asp:TextBox ID="textareaMessage" runat="server" Rows="12" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                                <%--<textarea class="form-control" rows="12" id="textareaMessage"></textarea>--%>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Chưa nhập Message" ControlToValidate="textareaMessage" ForeColor="Red" ></asp:RequiredFieldValidator>
                            </div>
                            <!-- /textarea -->
                            <!-- button -->
                            <div class="pull-right note">* Required Fields</div>
                            <asp:Button ID="btnGui" runat="server" Text="Send Message" OnClick="btnGui_Click" />
                            <%--<button class="btn btn--ys btn--xl btn-top" type="submit">Send message</button>--%>
                            <!-- /button -->
                        </div>						
					</div>
				</div>					
			</section>
		</div>
		<!-- End CONTENT section -->
</asp:Content>

