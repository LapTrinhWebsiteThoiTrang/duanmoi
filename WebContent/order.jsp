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
			<form action="#" method="POST" id="form_order">	
            <table cellpadding="2" cellspacing="12px"  align="center" width="900px" >
              <caption><h1  align="center">ĐẶT HÀNG SẢN PHẨM</h1></caption>
               <tr>
                    <td class="right">Họ và tên:</td>
                    
                    <td class="left"><input name="hovaten" type="text" id="hoten" placeholder="họ tên"/>
                    	<span id="lblhoten" style="color: #FF0004"> </span></td>                   
               
                                     
                </tr>
                <tr>
                    <td class="right">Email:</td>
                    <td class="left"><input name="email_order" type="email" id="email"  placeholder="email" /><span id="lblemail" style="color: #FF0004"></span></td>                   
               
                    <td class="right">Điện thoại:</td>
                    <td class="left"><input name="tel_order" type="tel" id="dthoai" placeholder="điện thoại" /><span id="lbldthoai" style="color: #FF0004"></span></td>                   
                </tr>
                <tr>
                    <td class="right">Tài khoản nếu có:</td>
                    <td class="left"><input type="email" id="mkhau" placeholder="Tài khoản"/><span id="lblmkhau" style="color: #FF0004"></span></td>                   
              
                    <td class="right">Mật khẩu nếu có:</td>
                    <td class="left"><input type="password" id="lmkhau"  placeholder="mật khẩu"/><span id="lbllmkhau" style="color: #FF0004"></span></td>                   
                </tr>
                <tr>
                    <td class="right">Tỉnh| Thành Phố:</td>
                    <td class="left">
                       <select id="nnghiep">
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
                        <select id="nnghiep">
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
                       <select id="nnghiep">
                            <option selected="selected" value="0">--- Chọn trong danh sách ---</option>
                            <option value="1">TP Hồ Chí Minh</option>
                            <option value="2">Hà Nội</option>
                            <option value="1">Vũng Tàu</option>
                            <option value="1">Đà Nẵng</option>
                        </select>
                        <span id="lblnnghiep" style="color: #FF0004"></span>
                    </td>                 
               
                    
                </tr>
               
                                
                
                <tr>
                    <td class="right">Địa chỉ nhà:</td>
                    <td colspan="3"><textarea id="ghichu" placeholder="ghi chú"></textarea></td>                   
                </tr>
                <tr><td colspan="4" align="center">
                    <input type="submit" id="dongy" value="Hoàn tất"/>
                </td></tr>
            </table>
			</form>
            <div id="ketqua" style="line-height: 2">[Thông tin xác nhận]</div>	
		</div>
	</section>
	</div>
	
	
	<%@ include file="Template/Layout/footer.jsp" %>
	<%@ include file="Template/Layout/script.jsp" %>
</body>
</html>