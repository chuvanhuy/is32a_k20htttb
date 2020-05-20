<!DOCTYPE html>
<html>
<head>
	<title>Tin tức chi tiết | K20HTTTB</title>
	<link rel="stylesheet" type="text/css" href="./css/style.css">
</head>

<body>
	<h1 style="color: red;">Chào mừng các bạn ghé thăm Website K20HTTTB</h1>

	<p style="text-align: right;" id="dieuhuong"><a href=".\index.html">Trang chủ</a> | <a href=".\gioi_thieu.html">Giới thiệu</a> | <a href=".\tin_tuc.html">Tin tức</a> | <a href=".\san_pham.html">Sản phẩm</a> | <a href=".\lien_he.html">Liên hệ</a></p>

	<?php
		// 0. Lấy dữ liệu mã ID tin tức để thực hiện câu lệnh truy vấn
		$id_tin_tuc = $_GET["id"];

		// 1. Chuỗi kết nối đến CSDL
		$ket_noi = mysqli_connect("localhost", "root", "", "k20htttb_db");

		// 2. Viết câu lệnh SQL để lấy ra dữ liệu mong muốn
		$sql = "
			SELECT *
			FROM tbl_tin_tuc
			WHERE id_tin_tuc='".$id_tin_tuc."'
		";
		// Hướng dẫn check câu lệnh truy vấn viết đúng hay sai
		// var_dump($sql); exit();

		// 3. Thực hiện truy vấn để lấy ra các dữ liệu mong muốn
		$noi_dung_tin_tuc = mysqli_query($ket_noi, $sql);

		// 4. Hiển thị dữ liệu mong muốn
		while ($row = mysqli_fetch_array($noi_dung_tin_tuc)) {
	;?>
	<h3><?php echo $row["tieu_de"];?></h3>
	<p><?php echo $row["mo_ta"];?></p>
	<p style="text-align: center;"><img src="./img/<?php 
		if ($row["anh_minh_hoa"]<>"") {
			echo $row["anh_minh_hoa"];
		} else {
			echo "no_image.png";
		}
	;?>" width="650px" height="auto"></p>
	<p><?php echo $row["noi_dung"];?></p>
	<?php
		}
	;?>
</body>
</html>