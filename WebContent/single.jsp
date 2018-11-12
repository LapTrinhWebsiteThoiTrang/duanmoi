<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% 
    	ResultSet SanPham=(ResultSet)request.getAttribute("SP");
    
    %>
<!DOCTYPE html>
<html lang="en">
	<%@ include file="Template/Layout/head.jsp" %>
<body>
	<%@ include file="Template/Layout/header.jsp" %>
	

<div class="banner-bootom-w3-agileits">
<div class="container">
     <div class="col-md-4 single-right-left ">
        <div class="grid images_3_of_2">
            <div class="">
         <%while(SanPham.next())
        	 {%>       
                <ul class="slides">
                    <li data-thumb="public/images/<%=SanPham.getString("MaLoai")+"/"+ SanPham.getString("Hinh")%>">
                        <div class="thumb-image"> <img src="public/images/<%=SanPham.getString("MaLoai")+"/"+ SanPham.getString("Hinh")%>" data-imagezoom="true" class="img-responsive"> 
                        </div>
                    </li>
                   
                </ul>
                <div class="clearfix"></div>
            </div>	
        </div>
    </div>
    <div class="col-md-8 single-right-left simpleCart_shelfItem">
        <h3><%=SanPham.getString("TenSanPham")%></h3>
        <p class="card-text"><%=SanPham.getString("MoTaSanPham")%></p>
        
        <p><span class="item_price"><%= SanPham.getInt("DonGia")-SanPham.getInt("Sale")*SanPham.getInt("DonGia")/100%></span> 
        <del><%if(SanPham.getInt("Sale")!=0)
					{
        				SanPham.getInt("DonGia");
					}
						%></del></p>
        <div class="rating1">
            <span class="starRating">
                <input id="rating5" type="radio" name="rating" value="5">
                <label for="rating5">5</label>
                <input id="rating4" type="radio" name="rating" value="4">
                <label for="rating4">4</label>
                <input id="rating3" type="radio" name="rating" value="3" checked="">
                <label for="rating3">3</label>
                <input id="rating2" type="radio" name="rating" value="2">
                <label for="rating2">2</label>
                <input id="rating1" type="radio" name="rating" value="1">
                <label for="rating1">1</label>
            </span>
        </div>
        
        
        <div class="occasion-cart">
            <div class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">
                <form action="Cart" method="post">
						<fieldset>
							<input type="hidden" name="Maloai" value="<%= SanPham.getString("Maloai")%>" />
							<input type="hidden" name="MaSanPham" value="<%= SanPham.getString("MaSanPham")%>" />
							<input type="hidden" name="TenSanPham" value=" <%= SanPham.getString("TenSanPham")%>" />
							<input type="hidden" name="DonGia" value="<%= SanPham.getInt("DonGia")-SanPham.getInt("Sale")*SanPham.getInt("DonGia")/100%>" />
							<input type="hidden" name="Hinh" value="<%= SanPham.getString("Hinh")%>" />
							<input type="hidden" name="MoTaSanPham" value="<%= SanPham.getString("MoTaSanPham")%>" />
							<input type="hidden" name="Sale" value="<%= SanPham.getInt("Sale")%>" />
							<input type="submit" name="submit" value="Add to cart" class="button" />
						</fieldset>
					</form>
            </div>
                                
        </div>
        <ul class="social-nav model-3d-0 footer-social w3_agile_social single_page_w3ls">
           <li class="share">Share On : </li>
            <li><a href="#" class="facebook">
                  <div class="front"><i class="fa fa-facebook" aria-hidden="true"></i></div>
                  <div class="back"><i class="fa fa-facebook" aria-hidden="true"></i></div></a></li>
            <li><a href="#" class="twitter"> 
                  <div class="front"><i class="fa fa-twitter" aria-hidden="true"></i></div>
                  <div class="back"><i class="fa fa-twitter" aria-hidden="true"></i></div></a></li>
            <li><a href="#" class="instagram">
                  <div class="front"><i class="fa fa-instagram" aria-hidden="true"></i></div>
                  <div class="back"><i class="fa fa-instagram" aria-hidden="true"></i></div></a></li>
            <li><a href="#" class="pinterest">
                  <div class="front"><i class="fa fa-linkedin" aria-hidden="true"></i></div>
                  <div class="back"><i class="fa fa-linkedin" aria-hidden="true"></i></div></a></li>
        </ul>

  </div>
  <%} %>
    <div class="clearfix"> </div>
    
 </div>
</div>

	
	
	
	<%@ include file="Template/Layout/footer.jsp" %>
	<%@ include file="Template/Layout/script.jsp" %>
</body>
</html>