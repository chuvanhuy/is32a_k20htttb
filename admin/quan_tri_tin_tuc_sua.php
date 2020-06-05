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
	<title>Sửa tin tức</title>
</head>
<body>
	<h1 style="text-align: center; font-weight: bold; color: red; padding-bottom: 20px;">SỬA TIN TỨC</h1>
	<?php 
		// 1. Chuỗi kết nối đến CSDL
		$ket_noi = mysqli_connect("localhost", "root", "", "k20htttb_db");

		// 2. Lẫy ra được ID muốn xóa
		$id_tin_tuc = $_GET["id"];

		// 3. Viết câu lệnh SQL để lấy tin tức có ID như trên
		$sql = "
			SELECT *
			FROM tbl_tin_tuc
			WHERE id_tin_tuc='".$id_tin_tuc."'
		";

		// 4. Thực hiện truy vấn để lấy dữ liệu
		$tin_tuc = mysqli_query($ket_noi, $sql);

		// 5. Hiển thị dữ liệu lên Website
		$row = mysqli_fetch_array($tin_tuc);
	;?>
	<form action="./quan_tri_tin_tuc_sua_thuc_hien.php" method="POST" enctype="multipart/form-data">
		<p>
			Tiêu đề <br>
			<input type="text" name="txtTieuDe" value="<?php echo $row['tieu_de'];?>" style="width: 100%;">
		</p>
		<p>
			Mô tả <br>
			<textarea name="txtMoTa" style="width: 100%;"><?php echo $row['mo_ta'];?></textarea>
		</p>
		<p>
			Ảnh minh họa <br>
			<input type="file" name="txtAnhMinhHoa" style="width: 100%;">
		</p>
		<p>
			<img src="../img/<?php 
					if ($row["anh_minh_hoa"]<>"") {
						echo $row["anh_minh_hoa"];
					} else {
						echo "no_image.png";
					}
				;?>" width="180px" height="auto">
		</p>
		<p>
			Nội dung <br>
			<textarea name="txtNoiDung" style="width: 100%;"><?php echo $row['noi_dung'];?></textarea>
		</p>
		<button type="submit">Cập nhật</button>
		<input type="hidden" name="txtID" value="<?php echo $row['id_tin_tuc'];?>">
	</form>
</body>
</html>