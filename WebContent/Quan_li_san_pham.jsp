<%@page import="java.util.Vector"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="en">

<<<<<<< HEAD
	<%
		ResultSet LoadSPTheoLoai= (ResultSet)request.getAttribute("DSSP");
		ResultSet TraLoaiSP = (ResultSet)request.getAttribute("LSP");
		ResultSet LayTenLoai = (ResultSet)request.getAttribute("LTL");
		ResultSet XoaSP = (ResultSet)request.getAttribute("XoaSP");
	%>
    <!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Document</title>
        <link rel="stylesheet" href="public/css/bootstrap.css">
        <link rel="stylesheet" href="public/css/header.css">
        <link rel="stylesheet" href="public/css/QuanLiSPAdmin.css">
        <link rel="stylesheet" href="public/css/Chi_tiet_TK.css">
<script src="https://code.jquery.com/jquery-3.3.1.js"
	integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
	crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
	           
    </head>

    <body>
        <header>
            <div class="header">
                <p id="WebsiteName">WEBSITE</p>
                <div class="container-dx">
                    <p id="nameAdmin">VinhPham</p>
                    <p id="nameDX">Đăng xuất</p>
                </div>
=======
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" href="css/QuanLiSPAdmin.css">
</head>

<body>
    <header>
        <div class="header">
            <p id="WebsiteName">WEBSITE</p>
            <div class="container-dx">
                <p id="nameAdmin">VinhPham</p>
                <p id="nameDX">ÄÄng xuáº¥t</p>
>>>>>>> d8f453d8625b70c7b971e828e8e9fd52f2d90eaf
            </div>
        </div>
    </header>
    <div class="khungTong">
        <div class="khung">
            <div class="positionMenu" class="list-group">
                <a href="Quan_li_san_pham.html" class="list-group-item list-group-item-action list-group-item-secondary">Quáº£n lÃ½ Sáº£n pháº©m</a>
                <a href="Quan_li_nguoi_dung.html" class="list-group-item list-group-item-action list-group-item-secondary">Quáº£n lÃ½ NgÆ°á»i dÃ¹ng</a>
                <a href="Thong_ke_hoa_don.html" class="list-group-item list-group-item-action list-group-item-secondary">Thá»ng kÃª hÃ³a ÄÆ¡n</a>
            </div>
<<<<<<< HEAD
            <div class="khungHienThi">
                <div class="khungTenDanhMuc">
                    <p id="textTenDanhMuc"><b>Danh Sách Sản phẩm</b></p>
                    <div class="timkiemSP">
                        <div class="dropdown">
					  <button class="btn btn-primary dropdown-toggle" id="DRD" type="button" data-toggle="dropdown">Loại Sản Phẩm
					  <span class="caret"></span></button>
					  <ul class="dropdown-menu" id="DRD2">
					   <% 
					   		if(TraLoaiSP!=null) {
					   			while(TraLoaiSP.next())
								{				   		
					   	%>
					   	<li><a href="LoadSP?MaLoai=<%= TraLoaiSP.getString("MaLoai") %>"> <%= TraLoaiSP.getString("TenLoai") %> </a></li>
					 <%}} %>
					  </ul>
					</div> 
                    </div>
                    <a href="#confirm-form" id="ThemSanPham">Thêm Sản Phẩm</a>
                </div>
                <div class="khungchuaNoiDungQuanLi">
								
                    <table id="table" class="table">
                        <tr>
                            <th>Mã SP</th>
                            <th>Tên Sản Phẩm</th>
                            <th>Size</th>
                            <th>Số lượng</th>
                            <th>Giá bán</th>
                            <th>Hình ảnh</th>
                            <th>Xóa</th>
                            <th>Sửa</th>
                        </tr>
                      <%
						if(LoadSPTheoLoai != null){
							while(LoadSPTheoLoai.next())
						{%>
                                               	                                       	
                        <tr>
                            <td><%= LoadSPTheoLoai.getString("MaSanPham")%></td>
                            <td><%= LoadSPTheoLoai.getString("TenSanPham") %></td>
                            <td><%= LoadSPTheoLoai.getString("Size") %></td>
                            <td><%= LoadSPTheoLoai.getInt("SoLuong") %></td>
                            <td><%= LoadSPTheoLoai.getString("DonGia") %></td>
                            <td><img src="public/images/<%= LoadSPTheoLoai.getString("MaLoai") %>/<%= LoadSPTheoLoai.getString("Hinh") %>" width="100px" height="100px"></td>
                            <td><a href="LoadSP?MaSanPhamCanXoa=<%= LoadSPTheoLoai.getString("MaSanPham")%>">Xóa</a></td>
                            <td><a href="#">Sửa</a></td>
                        </tr>
                        <%}} %>
                      
                    </table>
=======
        </div>
        <div class="khungHienThi">
            <div class="khungTenDanhMuc">
                <p id="textTenDanhMuc"><b>Danh SÃ¡ch Sáº£n pháº©m</b></p>
                <div class="timkiemSP">
                    <p id="textTimkiem">TÃ¬m kiáº¿m</p>
                    <input type="text">
>>>>>>> d8f453d8625b70c7b971e828e8e9fd52f2d90eaf
                </div>
                <button type="button" class="btn btn-success">ThÃªm Sáº£n Pháº©m</button>
            </div>
<<<<<<< HEAD
            <div>
			<div class="login" id="confirm-form">
				<a class="close" href="#"><i class="fa fa-close" style="color: red; margin-right: 5px;"></i></a>
				<form>
				  	  <label for="exampleFormControlInput1">Tên Sản Phẩm</label>
   						 <input type="text" class="form-control" id="exampleFormControlInput1" placeholder=".....">	
   					  <label for="exampleFormControlInput1">Size</label>
   						 <input type="text" class="form-control" id="exampleFormControlInput1" placeholder=".....">
   					  <label for="exampleFormControlInput1">Số Lượng</label>
   						 <input type="text" class="form-control" id="exampleFormControlInput1" placeholder=".....">  
   					  <label for="exampleFormControlInput1">Giá</label>
   						 <input type="text" class="form-control" id="exampleFormControlInput1" placeholder=".....">
					  <div class="form-group">					  
					    <label for="exampleFormControlFile1">Hình</label>
					    <input type="file" class="form-control-file" id="exampleFormControlFile1">
					  </div>
					  <label for="exampleFormControlFile1">Mã Loại</label>
					 <input id="txtMaLoai" class="form-control">
				  <button type="submit" class="btn btn-primary">Submit</button>
				</form>
			</div>
			<script type="text/javascript">
			$(document).ready(function() {
				
				let path = window.location.href;
				let index = path.indexOf("=");
				let sub = path.substring(index + 1);
				$('#txtMaLoai').val(sub);
				
				$('#ThemSanPham').click(function() {
					//lấy giá trị thuộc tính href - chính là phần tử "#login-box"
					var loginBox = $(this).attr('href');
	
					//cho hiện hộp đăng nhập trong 300ms
					$(loginBox).fadeIn(300);
	
					// thêm phần tử id="over" vào sau body
					$('body').append('<div id="over">');
					$('#over').fadeIn(300);
	
					return false;
				});
	
				// khi click đóng hộp thoại
				$(document).on('click', "a.close, #over, button.submit-button", function() {
					$('#over, .login').fadeOut(300, function() {
						$('#over').remove();
					});
					return false;
				});
				
			});
	</script>
		</div>
=======
            <div class="khungchuaNoiDungQuanLi">
                <select>
                            <optgroup label="BÃ© trai">
                                <option> Ão jean bÃ© trai</option>
                                <option>Ão khoÃ¡c bÃ© trai</option>
                                <option>Ão thung bÃ© trai</option>
                                <option>Äá» bá» bÃ© trai</option>
                                <option>GiÃ y bÃ© trai</option>
                            </optgroup>
                            <optgroup label="BÃ© gÃ¡i">
                                <option>Ão khoÃ¡c bÃ© gÃ¡i</option>
                                <option>Ão sÆ¡ mi bÃ© gÃ¡i</option>
                                <option>Äáº§m bÃ© gÃ¡i</option>
                            </optgroup>
                        </select>
                <table id="table">
                    <tr>
                        <td>MÃ£ SP</td>
                        <td>TÃªn Sáº£n Pháº©m</td>
                        <td>GiÃ¡ bÃ¡n</td>
                        <td>HÃ¬nh áº£nh</td>
                        <td>Sá» lÆ°á»£ng</td>
                        <td>XÃ³a</td>
                        <td>Sá»­a</td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>Ão KhoÃ¡c bÃ© gÃ¡i</td>
                        <td>3000000</td>
                        <td><img src="image/Ão khoÃ¡c bÃ© gÃ¡i/akbg1.jpg" width="20%" height="20%"></td>
                        <td>2</td>
                        <td><input type="checkbox" name="Xoa"> XÃ³a</td>
                        <td><a href="#">Sá»­a</a></td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>Ão thung bÃ© gÃ¡i</td>
                        <td>3000000</td>
                        <td><img src="image/Ão thung bÃ© gÃ¡i/atbg1.jpg" width="20%" height="20%"></td>
                        <td>2</td>
                        <td><input type="checkbox" name="Xoa"> XÃ³a</td>
                        <td><a href="#">Sá»­a</a></td>
                    </tr>
                </table>
            </div>

>>>>>>> d8f453d8625b70c7b971e828e8e9fd52f2d90eaf
        </div>
    </div>


        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>

<<<<<<< HEAD
    </body>
=======
    <script src="js/bootstrap.min.js"></script>
</body>
>>>>>>> d8f453d8625b70c7b971e828e8e9fd52f2d90eaf

</html>