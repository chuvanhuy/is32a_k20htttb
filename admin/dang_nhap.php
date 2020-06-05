 <!DOCTYPE html>
<html>
<head>
	<title>Đăng nhập hệ thống</title>
</head>
<body>
	<h1 style="text-align: center; font-weight: bold; color: red; padding-bottom: 20px;">ĐĂNG NHẬP HỆ THỐNG</h1>

	<form action="./dang_nhap_thuc_hien.php" method="POST">
		<p>
			Email <br>
			<input type="text" name="txtEmail" style="width: 50%;">
		</p>
		<p>
			Mật khẩu <br>
			<input type="password" name="txtMatKhau" style="width: 50%;">
		</p>
		<button type="submit">Đăng nhập</button>
	</form>
</body>
</html>