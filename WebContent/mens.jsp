<%@page import="java.util.Vector"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
    <%
    
	   
	    ResultSet SanPham= (ResultSet)request.getAttribute("DSSP");
  
    
    %>
<!DOCTYPE html>
<html lang="en">
	<%@ include file="Template/Layout/head.jsp" %>
<body>
	<%@ include file="Template/Layout/header.jsp" %>
	
	


<div class="page-head_agile_info_w3l">
		<div class="container">
			<h3>Men's <span>Wear  </span></h3>
			<!--/w3_short-->
				 <div class="services-breadcrumb">
						<div class="agile_inner_breadcrumb">

						   <ul class="w3_short">
								<li><a href="index.jsp">Home</a><i>|</i></li>
								<li>Men's Wear</li>
							</ul>
						 </div>
				</div>
	   <!--//w3_short-->
	</div>
</div>






<div class="single-pro">
<%
	while(SanPham.next())
		
{%>
	<div class="col-md-3 product-men">
		<div class="men-pro-item simpleCart_shelfItem">
			<div class="men-thumb-item">
				<img src="public/images/<%=SanPham.getString("MaLoai")+"/"+ SanPham.getString("Hinh")%>" alt="" class="pro-image-front">
				<img src="public/images/<%=SanPham.getString("MaLoai")+"/"+ SanPham.getString("Hinh")%>" alt="" class="pro-image-back">
					<div class="men-cart-pro">
						<div class="inner-men-cart-pro">
							<a href="Single?MaSanPham=<%=SanPham.getString("MaSanPham") %>" class="link-product-add-cart">Quick View</a>
						</div>
					</div>
					<span class="product-new-top">New</span>
					
			</div>
			<div class="item-info-product ">
				<h4><a href="single.html"><%=SanPham.getString("TenSanPham")%></a></h4>
				<div class="info-product-price">
					<span class="item_price">
						<%= SanPham.getInt("DonGia")-SanPham.getInt("Sale")*SanPham.getInt("DonGia")/100 + " VND" %>
					</span>
					<del><%if(SanPham.getInt("Sale")!=0)
					{
						SanPham.getInt("DonGia");
					}
						%></del>
				</div>
				<div class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">
					<form class="formsp">
						<fieldset>
							<input type="hidden" name="MaLoai" value="<%= SanPham.getString("Maloai")%>" />
							<input type="hidden" name="MaSanPham" value="<%= SanPham.getString("MaSanPham")%>" />
							<input type="hidden" name="TenSanPham" value=" <%= SanPham.getString("TenSanPham")%>" />
							<input type="hidden" name="DonGia" value="<%= SanPham.getInt("DonGia")-SanPham.getInt("Sale")*SanPham.getInt("DonGia")/100%>" />
							<input type="hidden" name="Hinh" value="<%= SanPham.getString("Hinh")%>" />
							<input type="hidden" name="MoTaSanPham" value="<%= SanPham.getString("MoTaSanPham")%>" />
							<input type="hidden" name="Sale" value="<%= SanPham.getInt("Sale")%>" />
							<input type="hidden" name="SoLuong" value="1" />
							
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
	<script>
	$( ".formsp" ).on( "submit",function(e) {
		e.preventDefault();//ngan chan lai chua cho gui du lieu
		  let _ = $(this);
		  $.ajax({
			 url: 'Cart',
			 type: 'POST',
			 method: 'POST',
			 data: {
				 'fun': 'themsp',
				 'MaLoai': _.find('[name="MaLoai"]').val(),
				 'MaSanPham': _.find('[name="MaSanPham"]').val(),
				 'TenSanPham': _.find('[name="TenSanPham"]').val(),
				 'DonGia': _.find('[name="DonGia"]').val(),
				 'Hinh': _.find('[name="Hinh"]').val(),
				 'Sale': _.find('[name="Sale"]').val(),
				 'MoTaSanPham': _.find('[name="MoTaSanPham"]').val(),
				 'SoLuong': _.find('[name="SoLuong"]').val()
			 },
			 success: function(result){
				 if(result == 'true'){
					 location.href = 'cart.jsp';
				 }
			 }
		  });
		});
	</script>
</body>
</html>