<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
	<%@ include file="Template/Layout/head.jsp" %>
<body>
	<%@ include file="Template/Layout/header.jsp" %>
	
	
	<div class="div_order">
	<section id="content" align="center" >
		<div style="background-color: #f3f3f3">		
			<form class="formoder">	
            <table cellpadding="2" cellspacing="12px"  align="center" width="900px" >
              <caption><h1  align="center">ĐẶT HÀNG SẢN PHẨM</h1></caption>
               <tr>
                    <td class="right">Họ và tên:</td>
                    
                    <td class="left"><input name="hovaten" type="text" placeholder="họ tên"/>
                    	<span id="lblhoten" style="color: #FF0004"> </span></td>                   
               
                                     
                </tr>
                <tr>
                    <td class="right">Email:</td>
                    <td class="left"><input name="email_order" type="email"  placeholder="email" /><span id="lblemail" style="color: #FF0004"></span></td>                   
               
                    <td class="right">Điện thoại:</td>
                    <td class="left"><input name="tel_order" type="tel" placeholder="điện thoại" /><span id="lbldthoai" style="color: #FF0004"></span></td>                   
                </tr>
                <tr>
                    <td class="right">Tỉnh| Thành Phố:</td>
                    <td class="left">
                       <select name="tinhthanh">
                            <option selected="selected" value="0">--- Chọn trong danh sách ---</option>
                            <option value="1">TP Hồ Chí Minh</option>
                            <option value="2">Hà Nội</option>
                            <option value="1">Vũng Tàu</option>
                            <option value="1">Đà Nẵng</option>
                        </select>
                        <span id="lblnnghiep" style="color: #FF0004"></span>
                    </td>                 
               
                    <td class="right">Quân| Huyện:</td>
                    <td class="left">
                        <select name="quanhuyen">
                            <option selected="selected" value="0">--- Chọn trong danh sách ---</option>
                            <option value="1">Gò Vấp</option>
                            <option value="2">Thủ Đức</option>
                            <option value="1">Quận 9</option>
                            <option value="1">Tân Phú</option>
                        </select>
                        <span id="lblnnghiep" style="color: #FF0004"></span>
                    </td>                   
                </tr>
                <tr>
                    <td class="right">Phường| Xã:</td>
                    <td class="left">
                       <select name="phuongxa">
                            <option selected="selected" value="0">--- Chọn trong danh sách ---</option>
                            <option value="1">Bình Thọ</option>
                            <option value="2">Trường Thọ</option>
                            <option value="1">Hiệp Phú</option>
                            <option value="1">Hiệp Bình</option>
                        </select>
                        <span id="lblnnghiep" style="color: #FF0004"></span>
                    </td>                 
               
                    
                </tr>
               
                                
                
                <tr>
                    <td class="right">Địa chỉ nhà:</td>
                    <td colspan="3"><textarea name="diachi" placeholder="Địa chỉ"></textarea></td>                   
                </tr>
                <tr><td colspan="4" align="center">
                    <input type="submit" value="Hoàn tất"/>
                </td></tr>
            </table>
			</form>
            <div id="ketqua" style="line-height: 2">[Thông tin xác nhận]</div>	
		</div>
	</section>
	</div>
	
	
	<%@ include file="Template/Layout/footer.jsp" %>
	<%@ include file="Template/Layout/script.jsp" %>
	<script>
	$( ".formoder" ).on( "submit",function(e) {
		e.preventDefault();//ngan chan lai chua cho gui du lieu
		  let _ = $(this);
		  $.ajax({
			 url: 'Oder',
			 type: 'POST',
			 method: 'POST',
			 data: {
				 'fun': 'Dathang',
				 'hovaten': _.find('[name="hovaten"]').val(),
				 'tel_order': _.find('[name="tel_order"]').val(),
				 'email_order': _.find('[name="email_order"]').val(),
				 'tinhthanh': _.find('[name="tinhthanh"]').val(),
				 'quanhuyen': _.find('[name="quanhuyen"]').val(),
				 'phuongxa': _.find('[name="phuongxa"]').val(),
				 '"diachi"': _.find('[name=""diachi""]').val()
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