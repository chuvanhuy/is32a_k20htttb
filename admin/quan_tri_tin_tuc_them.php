<!DOCTYPE html>
<html>
<head>
	<title>Thêm mới tin tức</title>
</head>
<body>
	<h1 style="text-align: center; font-weight: bold; color: red; padding-bottom: 20px;">THÊM MỚI TIN TỨC</h1>

	<form action="./quan_tri_tin_tuc_them_thuc_hien.php" method="POST">
		<p>
			Tiêu đề <br>
			<input type="text" name="txtTieuDe" style="width: 100%;">
		</p>
		<p>
			Mô tả <br>
			<textarea name="txtMoTa" style="width: 100%;"></textarea>
		</p>
		<p>
			Nội dung <br>
			<textarea name="txtNoiDung" style="width: 100%;"></textarea>
		</p>
		<button type="submit">Thêm mới</button>
	</form>
</body>
</html>