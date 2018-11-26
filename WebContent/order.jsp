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
                            <option value="TP Hồ Chí Minh">TP Hồ Chí Minh</option>
                            <option value="Hà Nội">Hà Nội</option>
                            <option value="Vũng Tàu">Vũng Tàu</option>
                            <option value="Đà Nẵng">Đà Nẵng</option>
                        </select>
                        <span id="lblnnghiep" style="color: #FF0004"></span>
                    </td>                 
               
                    <td class="right">Quân| Huyện:</td>
                    <td class="left">
                        <select name="quanhuyen">
                            <option selected="selected" value="0">--- Chọn trong danh sách ---</option>
                            <option value="Gò Vấp">Gò Vấp</option>
                            <option value="Thủ Đức">Thủ Đức</option>
                            <option value="Quận 9">Quận 9</option>
                            <option value="Tân Phú">Tân Phú</option>
                        </select>
                        <span id="lblnnghiep" style="color: #FF0004"></span>
                    </td>                   
                </tr>
                <tr>
                    <td class="right">Phường| Xã:</td>
                    <td class="left">
                       <select name="phuongxa"  >
                            <option selected="selected" value="0">--- Chọn trong danh sách ---</option>
                            <option value="Bình Thọ">Bình Thọ</option>
                            <option value="Trường Thọ">Trường Thọ</option>
                            <option value="Hiệp Phú">Hiệp Phú</option>
                            <option value="Hiệp Bình">Hiệp Bình</option>
                        </select>
                        <span id="lblnnghiep" style="color: #FF0004"></span>
                    </td>                 
                                
                </tr>                                                       
                <tr>
                    <td class="right">Địa chỉ nhà:</td>
                    <td colspan="3"><textarea name="diachi" placeholder="Địa chỉ"></textarea></td>                   
                </tr>
                <tr><td colspan="4" align="center">
                    <input type="submit" name="submit" value="Hoàn tất"/>
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
			let phuongxa = _.find('[name="phuongxa"]').val();
			let quanhuyen = _.find('[name="quanhuyen"]').val();
			let tinhthanhpho = _.find('[name="tinhthanh"]').val();
			let diachi = _.find('[name="diachi"]').val();
			let hovaten = _.find('[name="hovaten"]').val();
			let tel_order = _.find('[name="tel_order"]').val();
			let email_order = _.find('[name="email_order"]').val();

			if(phuongxa == '0'){
				alert('Bạn chưa chọn tỉnh thành phố');
			}
			else if(quanhuyen == '0'){
				alert('Bạn chưa chọn quận huyện');
			}
			else if(tinhthanhpho == '0'){
				alert('Bạn chưa chọn quận huyện');
			}
			else if(diachi == ''){
				alert('Bạn chưa nhập địa chỉ');
			}
			else if(hovaten == ''){
				alert('Bạn chưa họ tên');
			}
			else if(tel_order == ''){
				alert('Bạn chưa nhập số điện thoại');
			}
			else if(email_order == ''){
				alert('Bạn chưa nhập email');
			}
			else {
				 $.ajax({
					 url: 'Order',
					 type: 'POST',
					 method: 'POST',
					 data: {
						 'fun': 'Dathang',
						 'hovaten': hovaten,
						 'tel_order': tel_order,
						 'email_order': email_order,
						 'tinhthanh': tinhthanhpho,
						 'quanhuyen': quanhuyen,
						 'phuongxa': phuongxa,
						 'diachi': diachi

					 },
					 success: function(result){
						
						 if(result == 'true'){
							 alert("Đặt hàng thành công!")
						 }
					 }
				  });
				
			}
		 
		});
	</script>
</body>
</html>