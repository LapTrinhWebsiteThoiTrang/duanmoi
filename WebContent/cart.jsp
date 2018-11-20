
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="Library.Class_San_Pham"%>	
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <% 
   		List<Class_San_Pham> Arr_class_san_pham=new ArrayList<Class_San_Pham>();
   		if(session.getAttribute("Arr_class_san_pham")!=null)
   		{
	   		Arr_class_san_pham =(ArrayList<Class_San_Pham>)session.getAttribute("Arr_class_san_pham");
   		}
   %>
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
		<% 
			if(session.getAttribute("Arr_class_san_pham")!=null)
			{
				for(int i=0;i<Arr_class_san_pham.size();++i)
				
				{
					
		%>
		<div class="items">

			<div class="item1">
				<div class="<%= Arr_class_san_pham.get(i).MaSanPham %>" >
					<div class="alert-close1"> </div>
					<div class="image1">
						<img src="public/images/<%=Arr_class_san_pham.get(i).MaLoai%>/<%=Arr_class_san_pham.get(i).Hinh %>" alt="item1">
					</div>
					<div class="title1">
						<p><%= Arr_class_san_pham.get(i).TenSanPham %></p>
					</div>
					<div class="quantity1">
						<form action="action_page.php">
							<input type="number" name="quantity" min="1" max="10" value="1">
						</form>
					</div>
					<div class="price1">
						<p><%=Arr_class_san_pham.get(i).DonGia %></p>
					</div>
					<div class="clear"></div>
				</div>
			</div>
		</div>
		
		<%
			}
				}
		%>
		
				
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
	
	<%-- <script>$(document).ready(function(c) {
		$('.alert-close1').on('click', function(c){
			$('."<%= Arr_class_san_pham.get(i).MaSanPham %>"').fadeOut('slow', function(c){
		  		$('.close1').remove();
			});
		});	  
	});
	</script> --%>
	
	
	<!-- <script>$(document).ready(function(c) {
		$('.alert-close1').on('click', function(c){
			$('#Son').fadeOut('slow', function(c){
		  		$('#Son').remove();
		  		
			});
		});	  
	});
	</script>
	 -->
</body>
</html>