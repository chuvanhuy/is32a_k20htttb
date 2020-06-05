<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Trang chủ | K20HTTTB</title>
	<link rel="stylesheet" type="text/css" href="./css/style.css">
	<style type="text/css">
		h3 {
			text-transform: uppercase;
			color: blue;
		}
	</style>
</head>
<body>
	<?php
		/* 
		- Tác giả: Đoàn Thanh Huyền
		- Ngày sửa đổi gần nhất: 24/04/2019
		- Phiên bản: v1.1
		*/

		// Đây là câu lệnh in dữ liệu ra màn hình
		echo "XIN CHÀO! ĐÂY LÀ DÒNG MÃ LỆNH PHP ĐẦU TIÊN CỦA TÔI";

		// Đây là câu lệnh in dữ liệu ra màn hình
			# Hàm echo để in
			# Hàm date() để xuất dữ liệu ngày tháng
			# Tham số d: chỉ ngày
			# Tham số m: chỉ tháng
			# Tham số Y: chỉ năm
		echo "<br>"."Hôm là ngày: ".date("d/m/Y");

		// Đây là câu lệnh in dữ liệu ra màn hình câu lệnh print_r
			# Hàm print_r để in
			# Hàm date() để xuất dữ liệu ngày tháng
			# Tham số h: chỉ giờ
			# Tham số i: chỉ phút
			# Tham số s: chỉ giây
			# Tham số a: chỉ AM hoặc PM
		print_r("<br>"."Bây giờ là: ".date("h:i:s a"));

		// Khởi tạo một biến
		$sinhvien = "Trần Kim Dung";

		// Kiểm tra thông tin chi tiết của biến thông qua hàm var_dump()
		echo "<br><br>";
		var_dump($sinhvien);

		// Khởi tạo 1 biến chưa định nghĩa (hay nó ở trạng thái NULL)
		$giangvien;

		// Kiểm tra thông tin chi tiết của biến thông qua hàm var_dump()
		echo "<br><br>";
		var_dump($giangvien);

		// Dùng hàm isset() để check xem 1 biến nào đó đã được khởi tạo và gán giá trị hay chưa?
		echo "<br><br>";
		$giangvien = "Chu Văn Huy";
		if(isset($giangvien)) {
			echo "Biến giangvien đã được gán giá trị";
		} else {
			echo "Biến giangvien chưa được gán giá trị";
		}

		// Dùng hàm empty() để check xem 1 biến nào đó có rỗng hay không?
		echo "<br><br>";
		if(empty($giangvien)) {
			echo "Biến giangvien rỗng";
		} else {
			echo "Biến giangvien không rỗng";
		}

		// Thử so sánh bằng
		echo "<br><br>";
		if ($giangvien != "Đoàn Thanh Huyền") {
			echo "Oh, cô Huyền không dạy lớp mình";
		} else {
			echo "Vui quá. Cô Huyền dạy lớp mình!";
		}

		// Cách 1: viết ĐẨY ĐỦ câu lệnh IF ELSE
		echo "<br><br>";
		if ($giangvien != "Đoàn Thanh Huyền") {
			$ketqua="Oh, cô Huyền không dạy lớp mình";
		} else {
			$ketqua="Vui quá. Cô Huyền dạy lớp mình!";
		}
		echo "Cách 1: ".$ketqua;


		// Cách 2: viết RÚT GỌN câu lệnh IF ELSE
		echo "<br><br>";
		$ketqua = ($giangvien != "Đoàn Thanh Huyền") ? "Oh, cô Huyền không dạy lớp mình" : "Vui quá. Cô Huyền dạy lớp mình!";
		echo "Cách 2: ".$ketqua;

		// Tìm hiểu cách thực hiện vòng lặp FOR
		echo "<br><br>";
		for ($i=1; $i <= 10 ; $i++) { 
			echo "Lần thông báo bằng vòng FOR thứ ".$i."<br>";
		}

		// Tìm hiểu cách thực hiện vòng lặp WHILE
		echo "<br><br>";
		$i = 1;
		while ($i <= 10) {
			echo "Lần thông báo bằng vòng WHILE thứ ".$i."<br>";
			$i++;
		}

		// Khai báo 1 mảng như thế nào?
		$nguoiyeu = array("Mơ", "Mận", "Đào", "Lê", "Huyền");

		// In ra được phần tử đầu tiên (cô thứ nhất)
		echo "<br><br>";
		echo "Cô đầu tiên: ".$nguoiyeu[0];

		// In ra được phần tử cuối cùng (cô hiện giờ)
		echo "<br><br>";
		echo "Cô hiện giờ: ".$nguoiyeu[4];

		// Khai báo 1 mảng
		$xehoi = array(
			"ten" => "Kia Morning",
			"nam_san_xuat" => 2014,
			"gia_tien" => "350.000.000 đ"
		);

		// In ra được các thành phần của mảng
		echo "<br><br>";
		echo $xehoi["ten"];


		// Hàm exit() có tác dụng THOÁT, không thực thi các câu lệnh phía dưới
		exit();
	;?>

	<h1 style="color: red;">Chào mừng các bạn ghé thăm Website K20HTTTB</h1>

	<p style="text-align: right;" id="dieuhuong"><a href=".\index.php">Trang chủ</a> | <a href=".\gioi_thieu.php">Giới thiệu</a> | <a href=".\tin_tuc.php">Tin tức</a> | <a href=".\san_pham.php">Sản phẩm</a> | <a href=".\lien_he.php">Liên hệ</a></p>
	
	<h3>Sinh viên Đại học Quốc gia TP HCM nghỉ hết tháng 3</h3>
	<p>7 trường thành viên Đại học Quốc gia TP HCM cho gần 70.000 sinh viên nghỉ học hết tháng 3 để phòng chống dịch Covid-19, sáng 6/3.</p>
	
	<h3>Sinh viên Đại học Quốc gia TP HCM nghỉ hết tháng 3</h3>
	<p>7 trường thành viên Đại học Quốc gia TP HCM cho gần 70.000 sinh viên nghỉ học hết tháng 3 để phòng chống dịch Covid-19, sáng 6/3.</p>
	
	<h3>Sinh viên Đại học Quốc gia TP HCM nghỉ hết tháng 3</h3>
	<p>7 trường thành viên Đại học Quốc gia TP HCM cho gần 70.000 sinh viên nghỉ học hết tháng 3 để phòng chống dịch Covid-19, sáng 6/3.</p>
	
	<h3>Sinh viên Đại học Quốc gia TP HCM nghỉ hết tháng 3</h3>
	<p>7 trường thành viên Đại học Quốc gia TP HCM cho gần 70.000 sinh viên nghỉ học hết tháng 3 để phòng chống dịch Covid-19, sáng 6/3.</p>
	
	<h3>Sinh viên Đại học Quốc gia TP HCM nghỉ hết tháng 3</h3>
	<p>7 trường thành viên Đại học Quốc gia TP HCM cho gần 70.000 sinh viên nghỉ học hết tháng 3 để phòng chống dịch Covid-19, sáng 6/3.</p>
</body>
</html>