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
<?php 
	// 1. Chuỗi kết nối đến CSDL
	$ket_noi = mysqli_connect("localhost", "root", "", "k20htttb_db");

	// 2. Lẫy dữ liệu để cập nhật tin tức
	$id_tin_tuc = $_POST["txtID"];
	$tieu_de = $_POST["txtTieuDe"];
	$mo_ta = $_POST["txtMoTa"];
	$noi_dung = $_POST["txtNoiDung"];

	// Lấy ra thông tin ảnh minh họa
	$anh_minh_hoa = "../img/".basename($_FILES["txtAnhMinhHoa"]["name"]);
	$file_anh_tam = $_FILES["txtAnhMinhHoa"]["tmp_name"];
	$thuc_hien_luu_anh = move_uploaded_file($file_anh_tam, $anh_minh_hoa);
	if(!$thuc_hien_luu_anh) {
		$anh_minh_hoa = NULL;
	}

	// 3. Viết câu lệnh SQL để cập nhật tin tức có ID như trên
	if($anh_minh_hoa == NULL)
	{
		$sql = "
			UPDATE `tbl_tin_tuc`
			SET
				`tieu_de` = '".$tieu_de."',
				`mo_ta` = '".$mo_ta."',
				`noi_dung` = '".$noi_dung."'
			WHERE `id_tin_tuc` = '".$id_tin_tuc."' 
		";
	} else {
		$sql = "
			UPDATE `tbl_tin_tuc`
			SET
				`tieu_de` = '".$tieu_de."',
				`mo_ta` = '".$mo_ta."',
				`anh_minh_hoa` = '".$anh_minh_hoa."',
				`noi_dung` = '".$noi_dung."'
			WHERE `id_tin_tuc` = '".$id_tin_tuc."' 
		";
	}

	// 4. Thực hiện truy vấn để thêm mới dữ liệu
	mysqli_query($ket_noi, $sql);

	// 5. Thông báo việc thêm mới tin tức thành công & quay trở lại trang quản lý tin tức
		// Thông báo cho người dùng biết bài viết đã được thêm mới thành công
		echo 
		"
			<script type='text/javascript'>
				window.alert('Bạn đã cập nhật bài viết thành công.');
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