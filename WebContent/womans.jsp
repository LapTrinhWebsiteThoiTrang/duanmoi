<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
    <%
    	ResultSet sp=(ResultSet)request.getAttribute("DSSP");
    	
    %>
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
				"WebContent/womans.jsp"				<li>Women's Wear</li>
							</ul>
						 </div>
				</div>
	   <!--//w3_short-->
	</div>
</div>

		
<div class="single-pro">
<% while(sp.next())
{

%>
	<div class="col-md-3 product-men">
		<div class="men-pro-item simpleCart_shelfItem">
			<div class="men-thumb-item">
				<img src="public/images/<%=sp.getString("MaLoai")+"/"+sp.getString("Hinh")%>" alt="" class="pro-image-front">
				<img src="public/images/<%=sp.getString("MaLoai")+"/"+sp.getString("Hinh")%>" alt="" class="pro-image-back">
					<div class="men-cart-pro">
						<div class="inner-men-cart-pro">
							<a href="Single?MaSanPham=<%=sp.getString("MaSanPham") %>" class="link-product-add-cart">Quick View</a>
						</div>
					</div>
					<span class="product-new-top">New</span>
					
			</div>
			<div class="item-info-product ">
				<h4><a href="single.html"><%=sp.getString("TenSanPham") %></a></h4>
				<div class="info-product-price">
					<span class="item_price"><%= sp.getInt("DonGia")-sp.getInt("Sale")*sp.getInt("DonGia")/100%></span>
					<del><%if(sp.getInt("Sale")!=0)
					{
						sp.getInt("DonGia");
					}
						%></del>
				</div>
				<div class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">
					<form class="formsp">
						<fieldset>
							<input type="hidden" name="MaLoai" value="<%= sp.getString("Maloai")%>" />
							<input type="hidden" name="MaSanPham" value="<%= sp.getString("MaSanPham")%>" />
							<input type="hidden" name="TenSanPham" value=" <%= sp.getString("TenSanPham")%>" />
							<input type="hidden" name="DonGia" value="<%= sp.getInt("DonGia")-sp.getInt("Sale")*sp.getInt("DonGia")/100%>" />
							<input type="hidden" name="Hinh" value="<%= sp.getString("Hinh")%>" />
							<input type="hidden" name="MoTaSanPham" value="<%= sp.getString("MoTaSanPham")%>" />
							<input type="hidden" name="Sale" value="<%= sp.getInt("Sale")%>" />
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
					 'MoTaSanPham': _.find('[name="MoTaSanPham"]').val()
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