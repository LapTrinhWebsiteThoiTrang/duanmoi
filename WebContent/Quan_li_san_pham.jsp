<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="en">

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
        </div>
        <div class="khungHienThi">
            <div class="khungTenDanhMuc">
                <p id="textTenDanhMuc"><b>Danh SÃ¡ch Sáº£n pháº©m</b></p>
                <div class="timkiemSP">
                    <p id="textTimkiem">TÃ¬m kiáº¿m</p>
                    <input type="text">
                </div>
                <button type="button" class="btn btn-success">ThÃªm Sáº£n Pháº©m</button>
            </div>
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

        </div>
    </div>



    <script src="js/bootstrap.min.js"></script>
</body>

</html>