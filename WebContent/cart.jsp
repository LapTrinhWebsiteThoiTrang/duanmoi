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
		
		<div class="items">

			<div class="item1">
				<div class="close1" id="Son">
					<div class="alert-close1"> </div>
					<div class="image1">
						<img src="public/images/s1.jpg" alt="item1">
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
		</div>
		
		
		
		<div class="items">

			<div class="item1">
				<div class="close1" id="Son">
					<div class="alert-close1"> </div>
					<div class="image1">
						<img src="public/images/s1.jpg" alt="item1">
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

	</div>
		
		<div class="checkout" align="center">
			
			<div class="checkout-btn" >
				<a href="order.jsp">Đặt hàng</a>
			</div>
			<div class="clear"></div>
		</div>
	</div>	
</div>


	<%@ include file="Template/Layout/footer.jsp" %>
	<%@ include file="Template/Layout/script.jsp" %>
		<script>$(document).ready(function(c) {
		$('.alert-close1').on('click', function(c){
			$('#Son').fadeOut('slow', function(c){
		  		$('#Son').remove();
		  		
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