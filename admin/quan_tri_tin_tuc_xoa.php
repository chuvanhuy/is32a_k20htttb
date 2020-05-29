<?php 
	// 1. Chuỗi kết nối đến CSDL
	$ket_noi = mysqli_connect("localhost", "root", "", "k20htttb_db");

	// 2. Lẫy ra được ID muốn xóa
	$id_tin_tuc = $_GET["id"];
	// secho $id_tin_tuc; exit();

	// 3. Viết câu lệnh SQL để xóa tin tức có ID như trên
	$sql = "
		DELETE
		FROM tbl_tin_tuc
		WHERE id_tin_tuc='".$id_tin_tuc."'
	";

	// 4. Thực hiện truy vấn để xóa dữ liệu
	mysqli_query($ket_noi, $sql);

	// 5. Thông báo việc xóa tin tức thành công & quay trở lại trang quản lý tin tức
		// Thông báo cho người dùng biết bài viết đã được xóa thành công
		echo 
		"
			<script type='text/javascript'>
				window.alert('Bạn đã xóa bài viết thành công.');
			</script>
		";

		// Chuyển người dùng vào trang quản trị tin tức
		echo 
		"
			<script type='text/javascript'>
				window.location.href = './quan_tri_tin_tuc.php'
			</script>
		";
;?>