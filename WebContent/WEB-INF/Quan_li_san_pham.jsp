<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

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
</head>

<body>
    <header>
        <div class="header">
            <p id="WebsiteName">WEBSITE</p>
            <div class="container-dx">
                <p id="nameAdmin">VinhPham</p>
                <p id="nameDX">Đăng xuất</p>
            </div>
        </div>
    </header>
    <div class="khungTong">
        <div class="khung">
            <div class="positionMenu" class="list-group">
                <a href="Quan_li_san_pham.jsp" class="list-group-item list-group-item-action list-group-item-secondary">Quản lý sản phẩm</a>
                <a href="Quan_li_nguoi_dung.jsp" class="list-group-item list-group-item-action list-group-item-secondary">Quản lý người dùng</a>
                <a href="Thong_ke_hoa_don.jsp" class="list-group-item list-group-item-action list-group-item-secondary">Thống kê hóa đơn</a>
            </div>
        </div>
        <div class="khungHienThi">
            <div class="khungTenDanhMuc">
                <p id="textTenDanhMuc"><b>Danh sách sản phẩm</b></p>
                <div class="timkiemSP">
                    <p id="textTimkiem">Tìm kiếm</p>
                    <input type="text">
                </div>
                <button type="button" class="btn btn-success">Thêm sản phẩm</button>
            </div>
            <div class="khungchuaNoiDungQuanLi">
                <select>
                            <optgroup label="Bé trai">
                                <option> Áo khoác bé trai</option>
                                <option>Áo jean bé trai</option>
                                <option>Áo thung bé trai</option>
                                <option>Nón bé trai</option>
                                <option>Giày bé trai</option>
                            </optgroup>
                            <optgroup label="Bé gái">
                                <option>Áo khoác bé gái</option>
                                <option>Áo jean bé gái</option>
                                <option>Đầm bé gáin</option>
                            </optgroup>
                        </select>
                <table id="table">
                    <tr>
                        <td>Mã Sp</td>
                        <td>Tên Sản Phẩm</td>
                        <td>Giá bán</td>
                        <td>Hình ảnh</td>
                        <td>Số lượng</td>
                        <td>Xóa</td>
                        <td>Sửa</td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>Áo khoác bé gái</td>
                        <td>3000000</td>
                        <td><img src="public/images/jean_men/jean1.jpg" width="20%" height="20%"></td>
                        <td>2</td>
                        <td><input type="checkbox" name="Xoa"> Xóa</td>
                        <td><a href="#">Sửa</a></td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>Áo thung bé gái</td>
                        <td>3000000</td>
                        <td><img src="public/images/jean_men/jean5.jpg" width="20%" height="20%"></td>
                        <td>2</td>
                        <td><input type="checkbox" name="Xoa"> Xóa</td>
                        <td><a href="#">Sửa</a></td>
                    </tr>
                </table>
            </div>

        </div>
    </div>



    <script src="js/bootstrap.min.js"></script>
</body>

</html>