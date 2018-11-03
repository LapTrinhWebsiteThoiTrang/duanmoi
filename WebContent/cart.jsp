<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
	<%@ include file="Template/Layout/head.jsp" %>

		
<body>
	<%@ include file="Template/Layout/header.jsp" %>
	
	<div class="body1_cart">
		<h1 class="h1">E SHOP CART WIDGET</h1>
		<div class="container">

		<!-- Mainbar-Starts-Here -->
		<div class="main-bar">
			<div class="product">
				<h3>Product</h3>
			</div>
			<div class="quantity">
				<h3>Quantity</h3>
			</div>
			<div class="price">
				<h3>Price</h3>
			</div>
			<div class="clear"></div>
		</div>
		<!-- //Mainbar-Ends-Here -->

		<!-- Items-Starts-Here -->
		<div class="items">

			<!-- Item1-Starts-Here -->
			<div class="item1">
				<div class="close1">
					<!-- Remove-Item --><div class="alert-close1"> </div><!-- //Remove-Item -->
					<div class="image1">
						<img src="images/item1.png" alt="item1">
					</div>
					<div class="title1">
						<p>Gucci Gg1078/S 4Uavk Grey Wayfarer</p>
					</div>
					<div class="quantity1">
						<form action="action_page.php">
							<input type="number" name="quantity" min="1" max="10" value="1">
						</form>
					</div>
					<div class="price1">
						<p>$ 210</p>
					</div>
					<div class="clear"></div>
				</div>
			</div>
			<!-- //Item1-Ends-Here -->

			<!-- Item2-Starts-Here -->
			<div class="item2">
				<div class="close2">
					<!-- Remove-Item --><div class="alert-close2"> </div><!-- //Remove-Item -->
					<div class="image2">
						<img src="images/item2.png" alt="item2">
					</div>
					<div class="title2">
						<p>Gucci Men's YA131202 Coupe Dual</p>
					</div>
					<div class="quantity2">
						<form action="action_page.php">
							<input type="number" name="quantity" min="1" max="10" value="1">
						</form>
					</div>
					<div class="price3">
						<p>$ 545</p>
					</div>
					<div class="clear"></div>
				</div>
			</div>
			<!-- //Item2-Ends-Here -->

			<!-- Item3-Starts-Here -->
			<div class="item3">
				<div class="close3">
					<!-- Remove-Item --><div class="alert-close3"> </div><!-- //Remove-Item -->
					<div class="image3">
						<img src="images/item3.png" alt="item3">
					</div>
					<div class="title3">
						<p>Gucci Cufflinks with Interlocking G Motif</p>
					</div>
					<div class="quantity3">
						<form action="action_page.php">
							<input type="number" name="quantity" min="1" max="10" value="1">
						</form>
					</div>
					<div class="price3">
						<p>$ 169</p>
					</div>
					<div class="clear"></div>
				</div>
			</div>
			<!-- //Item3-Ends-Here -->

		</div>
		<!-- //Items-Ends-Here -->

		<!-- Total-Price-Starts-Here -->
		
		<!-- //Total-Price-Ends-Here -->

		<!-- Checkout-Starts-Here -->
		<div class="checkout" align="center">
			
			<div class="checkout-btn" >
				<a href="order.jsp">Đặt hàng</a>
			</div>
			<div class="clear"></div>
		</div>
		<!-- //Checkout-Ends-Here -->

	</div>	
</div>


	<%@ include file="Template/Layout/footer.jsp" %>
	<%@ include file="Template/Layout/script.jsp" %>
		<script>$(document).ready(function(c) {
		$('.alert-close1').on('click', function(c){
			$('.close1').fadeOut('slow', function(c){
		  		$('.close1').remove();
			});
		});	  
	});
	</script>
	<script>$(document).ready(function(c) {
		$('.alert-close2').on('click', function(c){
			$('.close2').fadeOut('slow', function(c){
		  		$('.close2').remove();
			});
		});	  
	});
	</script>
	<script>$(document).ready(function(c) {
		$('.alert-close3').on('click', function(c){
			$('.close3').fadeOut('slow', function(c){
		  		$('.close3').remove();
			});
		});	  
	});
	</script>
	
</body>
</html>