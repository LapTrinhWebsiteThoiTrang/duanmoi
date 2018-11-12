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
								<li>Women's Wear</li>
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
					<form action="Cart" method="post">
						<fieldset>
							<input type="hidden" name="Maloai" value="<%= sp.getString("Maloai")%>" />
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
</body>
</html>