<html>
	<head>
		<meta charset="utf-8">
		<title>Tin tức tổng hợp | K20HTTTB</title>
		<link rel="stylesheet" type="text/css" href="./css/style.css">
	</head>

	<body>
		<h1 style="color: red;">Chào mừng các bạn ghé thăm Website K20HTTTB</h1>

		<p style="text-align: right;" id="dieuhuong"><a href=".\index.php">Trang chủ</a> | <a href=".\gioi_thieu.php">Giới thiệu</a> | <a href=".\tin_tuc.php">Tin tức</a> | <a href=".\san_pham.php">Sản phẩm</a> | <a href=".\lien_he.php">Liên hệ</a></p>

		<div style="float: left; width: 700px;">
			<?php 
				// 1. Chuỗi kết nối đến CSDL
				$ket_noi = mysqli_connect("localhost", "root", "", "k20htttb_db");

				// 2. Viết câu lệnh SQL để lấy ra dữ liệu mong muốn
				$sql = "
					SELECT *
					FROM tbl_tin_tuc
					ORDER BY id_tin_tuc DESC
				";

				// 3. Thực hiện truy vấn để lấy ra các dữ liệu mong muốn
				$noi_dung_tin_tuc = mysqli_query($ket_noi, $sql);

				// 4. Hiển thị dữ liệu mong muốn
				while ($row = mysqli_fetch_array($noi_dung_tin_tuc)) {
			;?>
			<h3><a href="tin_tuc_chi_tiet.php?id=<?php echo $row["id_tin_tuc"];?>"><font color="red"><?php echo $row["tieu_de"];?></font></a></h3>
			<table>
				<tr>
					<td><img src="./img/<?php 
						if ($row["anh_minh_hoa"]<>"") {
							echo $row["anh_minh_hoa"];
						} else {
							echo "no_image.png";
						}
					;?>" width="180px" height="auto"></td>
					<td style="vertical-align: top;"><p class="motanoidung"><i><?php echo $row["mo_ta"];?></i></p></td>
				</tr>
			</table>
			<hr>
			<?php
				}
			;?>
		</div>
		<div style="float: left; width: 300px;">
			TIN TỨC ĐƯỢC NHIỀU NGƯỜI ĐỌC

			<ul>
				<li>CĐV Man Utd: 'Hãy trao Quả Bóng Vàng cho Ighalo'</li>
				<li>CĐV Liverpool nguyền rủa thủ môn Adrian 39 </li>
				<li>HLV Australia lo sau khi Việt Nam ghi bàn</li>
				<li>Ronaldinho ký tặng bạn tù</li>
			</ul>
		</div>


	</body>
</html>