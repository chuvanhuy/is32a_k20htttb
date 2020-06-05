<?php 
	session_start();
	if(!$_SESSION['email']) {
		echo 
		"
			<script type='text/javascript'>
				window.alert('Bạn không có quyền truy cập!');
			</script>
		";

		// Chuyển người dùng vào trang quản trị tin tức
		echo 
		"
			<script type='text/javascript'>
				window.location.href = './dang_nhap.php'
			</script>
		";
	}
;?>
<!DOCTYPE html>
<html>
<head>
	<title>Quản trị tin tức</title>
</head>
<body>
	<h1 style="text-align: center; font-weight: bold; color: red; padding-bottom: 30px;">QUẢN TRỊ TIN TỨC</h1>
	<p style="text-align: right; font-weight: bold;"><a href="quan_tri_tin_tuc_them.php">Thêm mới</a></p>
	<table>
		<tr>
			<td style="font-weight: bold; text-align: center;">STT</td>
			<td style="font-weight: bold; text-align: center;">Ảnh minh họa</td>
			<td style="font-weight: bold; text-align: center;">Tiêu đề</td>
			<td style="font-weight: bold; text-align: center;" colspan="2">Hiệu chỉnh</td>
		</tr>
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
			$i=0;
			while ($row = mysqli_fetch_array($noi_dung_tin_tuc)) {
				$i++;
		;?>
		<tr>
			<td><?php echo $i;?></td>
			<td>
				<img src="../img/<?php 
						if ($row["anh_minh_hoa"]<>"") {
							echo $row["anh_minh_hoa"];
						} else {
							echo "no_image.png";
						}
					;?>" width="180px" height="auto">
			</td>
			<td>
				<a href="../tin_tuc_chi_tiet.php?id=<?php echo $row["id_tin_tuc"];?>"s><?php echo $row["tieu_de"];?></a>
			</td>
			<td>
				<a href="quan_tri_tin_tuc_sua.php?id=<?php echo $row["id_tin_tuc"];?>">Sửa</a>
			</td>
			<td>
				<a href="quan_tri_tin_tuc_xoa.php?id=<?php echo $row["id_tin_tuc"];?>">Xóa</a>
			</td>
		</tr>
		<?php
			}
		;?>
	</table>
</body>
</html>