<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
	<%@ include file="Template/Layout/head.jsp" %>
<body>
	<%@ include file="Template/Layout/header.jsp" %>
		
		
		
		<div class="page-head_agile_info_w3l">
		<div class="container">
			<h3>Women's <span>Wear  </span></h3>
				 <div class="services-breadcrumb">
						<div class="agile_inner_breadcrumb">

						   <ul class="w3_short">
								<li><a href="index.jsp">Home</a><i>|</i></li>
								<li>Women's Wear</li>
							</ul>
						 </div>
				</div>
	   <!--//w3_short-->
	</div>
</div>

		
<div class="single-pro">
<% for(int i=1;i<=12;++i) {%>
	<div class="col-md-3 product-men">
		<div class="men-pro-item simpleCart_shelfItem">
			<div class="men-thumb-item">
				<img src="public/images/<%="quantay_woman/quantay_woman"+ Integer.toString(i)%>.jpg" alt="" class="pro-image-front">
				<img src="public/images/<%="quantay_woman/quantay_woman"+ Integer.toString(i)%>.jpg" alt="" class="pro-image-back">
					<div class="men-cart-pro">
						<div class="inner-men-cart-pro">
							<a href="single.jsp" class="link-product-add-cart">Quick View</a>
						</div>
					</div>
					<span class="product-new-top">New</span>
					
			</div>
			<div class="item-info-product ">
				<h4><a href="single.html">Formal Blue Shirt</a></h4>
				<div class="info-product-price">
					<span class="item_price">$45.99</span>
					<del>$69.71</del>
				</div>
				<div class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">
					<form action="#" method="post">
						<fieldset>
							<input type="hidden" name="cmd" value="_cart" />
							<input type="hidden" name="add" value="1" />
							<input type="hidden" name="business" value=" " />
							<input type="hidden" name="item_name" value="Formal Blue Shirt" />
							<input type="hidden" name="amount" value="44.99" />
							<input type="hidden" name="discount_amount" value="2.00" />
							<input type="hidden" name="currency_code" value="USD" />
							<input type="hidden" name="return" value=" " />
							<input type="hidden" name="cancel_return" value=" " />
							<input type="submit" name="submit" value="Add to cart" class="button" />
						</fieldset>
					</form>
				</div>
													
			</div>
		</div>
	</div>
<%}%>
<div class="clearfix"></div>
</div>
	<%@ include file="Template/Layout/footer.jsp" %>
	<%@ include file="Template/Layout/script.jsp" %>
</body>
</html>