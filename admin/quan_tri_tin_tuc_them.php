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
	<title>Thêm mới tin tức</title>
</head>
<body>
	<h1 style="text-align: center; font-weight: bold; color: red; padding-bottom: 20px;">THÊM MỚI TIN TỨC</h1>

	<form action="./quan_tri_tin_tuc_them_thuc_hien.php" method="POST" enctype="multipart/form-data">
		<p>
			Tiêu đề <br>
			<input type="text" name="txtTieuDe" style="width: 100%;">
		</p>
		<p>
			Mô tả <br>
			<textarea name="txtMoTa" style="width: 100%;"></textarea>
		</p>
		<p>
			Ảnh minh họa <br>
			<input type="file" name="txtAnhMinhHoa" style="width: 100%;">
		</p>
		<p>
			Nội dung <br>
			<textarea name="txtNoiDung" style="width: 100%;"></textarea>
		</p>
		<button type="submit">Thêm mới</button>
	</form>
</body>
</html>