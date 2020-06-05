-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 05, 2020 lúc 10:28 PM
-- Phiên bản máy phục vụ: 10.4.11-MariaDB
-- Phiên bản PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `k20htttb_db`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_lien_he`
--

CREATE TABLE `tbl_lien_he` (
  `id_lien_he` int(11) NOT NULL,
  `ho_ten` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `so_dien_thoai` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `noi_dung_lien_he` text COLLATE utf8_unicode_ci NOT NULL,
  `noi_dung_phan_hoi` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_lien_he`
--

INSERT INTO `tbl_lien_he` (`id_lien_he`, `ho_ten`, `email`, `so_dien_thoai`, `noi_dung_lien_he`, `noi_dung_phan_hoi`) VALUES
(1, 'Lê Thị Lý', 'lylt@gmail.com', '0989888999', 'Mình muốn mua sản phẩm của các bạn. Nhưng không biết chính sách vận chuyển như thế nào. Mình ở Sài gòn.', NULL),
(2, 'Nguyễn Quỳnh Trang', 'trangnq@gmail.com', '0988777888', 'Mình muốn mua sản phẩm của các bạn. Nhưng không biết chính sách vận chuyển như thế nào. Mình ở Sài gòn.', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_loai_san_pham`
--

CREATE TABLE `tbl_loai_san_pham` (
  `id_loai_san_pham` int(11) NOT NULL,
  `ten_loai_san_pham` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ghi_chu` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_loai_san_pham`
--

INSERT INTO `tbl_loai_san_pham` (`id_loai_san_pham`, `ten_loai_san_pham`, `ghi_chu`) VALUES
(1, 'Máy điều chế nước Javen', NULL),
(2, 'Máy khử trùng công nghiệp', NULL),
(3, 'Máy lọc không khí', NULL),
(4, 'Máy xử lý chất thải bệnh viện', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_loai_tin_tuc`
--

CREATE TABLE `tbl_loai_tin_tuc` (
  `id_loai_tin_tuc` int(11) NOT NULL,
  `ten_loai_tin_tuc` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ghi_chu` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_loai_tin_tuc`
--

INSERT INTO `tbl_loai_tin_tuc` (`id_loai_tin_tuc`, `ten_loai_tin_tuc`, `ghi_chu`) VALUES
(1, 'Tin hoạt động', NULL),
(2, 'Tin sự kiện', NULL),
(3, 'Tin khuyến mại', NULL),
(4, 'Tin tuyển dụng', NULL),
(5, 'Tin tức khác', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_nguoi_dung`
--

CREATE TABLE `tbl_nguoi_dung` (
  `id_nguoi_dung` int(11) NOT NULL,
  `ten_nguoi_dung` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `mat_khau` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ghi_chu` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_nguoi_dung`
--

INSERT INTO `tbl_nguoi_dung` (`id_nguoi_dung`, `ten_nguoi_dung`, `email`, `mat_khau`, `ghi_chu`) VALUES
(1, 'Chu Văn Huy', 'chuvanhuy@gmail.com', '202cb962ac59075b964b07152d234b70', NULL),
(2, 'Trần Phương Linh', 'linhtp@gmail.com', '202cb962ac59075b964b07152d234b70', NULL),
(3, 'Quách Thị Hải Yến', 'yenqth@gmail.com', '202cb962ac59075b964b07152d234b70', NULL),
(4, 'Trần Mạnh Hùng', 'hungtm@gmail.com', '202cb962ac59075b964b07152d234b70', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_san_pham`
--

CREATE TABLE `tbl_san_pham` (
  `id_san_pham` int(11) NOT NULL,
  `id_loai_san_pham` int(11) NOT NULL,
  `ten_san_pham` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `mo_ta` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `anh_minh_hoa` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gia_ban` float DEFAULT NULL,
  `ghi_chu` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_san_pham`
--

INSERT INTO `tbl_san_pham` (`id_san_pham`, `id_loai_san_pham`, `ten_san_pham`, `mo_ta`, `anh_minh_hoa`, `gia_ban`, `ghi_chu`) VALUES
(1, 1, 'JAVEN WATER - M30', '- 01 điện cực công suất công suất 30g Clo hoạt tính/giờ\r\n\r\n- 01 tủ điện điều khiển\r\n\r\n- 01 bình nhựa thể tích 30 lít chứa nước muối để điện phân tạo Javen\r\n\r\n- 01 bình nhựa chứa axit để rửa điện cực\r\n\r\n- Muối chạy thử máy : 50 kg\r\n\r\nPhạm vi ứng dụng: Được sử dụng phổ biến và rất thuận tiện để điều chế nước Javen dùng cho việc sát trùng ngay tại chỗ tại các trạm sử lý nước, bệnh viện, bể bơi, chăn nuôi...\r\n\r\nHiệu quả đem lại: Đây là một thiết bị mới trong lĩnh vực khử trùng giúp cho các trạm cung', NULL, NULL, NULL),
(2, 1, 'JAVEN WATER - C30', '- 01 điện cực công suất công suất 30g Clo hoạt tính/giờ\r\n\r\n- 01 tủ điện điều khiển\r\n\r\n- 01 bình nhựa thể tích 30 lít chứa nước muối để điện phân tạo Javen\r\n\r\n- 01 bình nhựa chứa axit để rửa điện cực\r\n\r\n- Muối chạy thử máy : 50 kg\r\n\r\nPhạm vi ứng dụng: Được sử dụng phổ biến và rất thuận tiện để điều chế nước Javen dùng cho việc sát trùng ngay tại chỗ tại các trạm sử lý nước, bệnh viện, bể bơi, chăn nuôi...\r\n\r\nHiệu quả đem lại: Đây là một thiết bị mới trong lĩnh vực khử trùng giúp cho các trạm cung', NULL, NULL, NULL),
(3, 2, 'KHỬ TRÙNG NƯỚC CẤP', '- 01 điện cực công suất công suất 30g Clo hoạt tính/giờ\r\n\r\n- 01 tủ điện điều khiển\r\n\r\n- 01 bình nhựa thể tích 30 lít chứa nước muối để điện phân tạo Javen\r\n\r\n- 01 bình nhựa chứa axit để rửa điện cực\r\n\r\n- Muối chạy thử máy : 50 kg\r\n\r\nPhạm vi ứng dụng: Được sử dụng phổ biến và rất thuận tiện để điều chế nước Javen dùng cho việc sát trùng ngay tại chỗ tại các trạm sử lý nước, bệnh viện, bể bơi, chăn nuôi...\r\n\r\nHiệu quả đem lại: Đây là một thiết bị mới trong lĩnh vực khử trùng giúp cho các trạm cung', NULL, NULL, NULL),
(4, 2, 'MÁY KHỬ TRÙNG NƯỚC THẢI', '- 01 điện cực công suất công suất 30g Clo hoạt tính/giờ\r\n\r\n- 01 tủ điện điều khiển\r\n\r\n- 01 bình nhựa thể tích 30 lít chứa nước muối để điện phân tạo Javen\r\n\r\n- 01 bình nhựa chứa axit để rửa điện cực\r\n\r\n- Muối chạy thử máy : 50 kg\r\n\r\nPhạm vi ứng dụng: Được sử dụng phổ biến và rất thuận tiện để điều chế nước Javen dùng cho việc sát trùng ngay tại chỗ tại các trạm sử lý nước, bệnh viện, bể bơi, chăn nuôi...\r\n\r\nHiệu quả đem lại: Đây là một thiết bị mới trong lĩnh vực khử trùng giúp cho các trạm cung', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_tin_tuc`
--

CREATE TABLE `tbl_tin_tuc` (
  `id_tin_tuc` int(11) NOT NULL,
  `id_loai_tin_tuc` int(11) NOT NULL,
  `tieu_de` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `mo_ta` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `noi_dung` text COLLATE utf8_unicode_ci NOT NULL,
  `anh_minh_hoa` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ghi_chu` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_tin_tuc`
--

INSERT INTO `tbl_tin_tuc` (`id_tin_tuc`, `id_loai_tin_tuc`, `tieu_de`, `mo_ta`, `noi_dung`, `anh_minh_hoa`, `ghi_chu`) VALUES
(6, 2, 'Bộ Quốc phòng: Sẵn sàng đấu tranh với các nhóm tàu xâm phạm vùng biển', 'Bộ Quốc phòng: Sẵn sàng đấu tranh với các nhóm tàu xâm phạm vùng biển', 'Cử tri TP.HCM đề nghị Đảng, Nhà nước cần tiếp tục kiên quyết, kiên trì thực hiện các biện pháp phù hợp trong đấu tranh bảo vệ chủ quyền biển, đảo kịp thời thông tin đến nhân dân; tăng cường tiềm lực quốc phòng nhằm đáp ứng yêu cầu bảo vệ Tổ quốc.\r\n\r\nTrung Quốc đẩy mạnh yêu sách phi lý trên Biển Đông\r\n\r\nTrả lời cử tri, Bộ Quốc phòng cho biết, tình hình Biển Đông thời gian gần đây diễn biến theo hướng phức tạp, căng thẳng và mất ổn định hơn, đưa đến những thách thức mới đối với quốc phòng, an ninh của ta.\r\n\r\nTrung Quốc đẩy mạnh các hoạt động nhằm khẳng định chủ quyền theo yêu sách phi lý trên Biển Đông; bên cạnh đó các hoạt động khẳng định chủ quyền của các nước trong khu vực, sự can dự của các nước lớn ngoài khu vực đã làm cho tình hình Biển Đông trở nên phức tạp thêm.', 'bo-quoc-phong-san-sang-dau-tranh-voi-cac-nhom-tau-xam-pham-vung-bien-cua-ta.jpg', NULL),
(11, 1, 'Từ 1/7, thu nhập trên 11 triệu đồng mới phải đóng thuế', 'Ngưỡng thu nhập chịu thuế tối thiểu của cá nhân tăng lên 11 triệu đồng từ 1/7, theo Nghị quyết của Uỷ ban Thường vụ Quốc hội. ', 'Chủ tịch Quốc hội Nguyễn Thị Kim Ngân vừa ký ban hành Nghị quyết về điều chỉnh mức giảm trừ gia cảnh thuế thu nhập cá nhân. Theo đó, từ 1/7 mức giảm trừ gia cảnh nâng từ 9 triệu lên 11 triệu đồng một tháng, tức người có thu nhập trên 11 triệu đồng mỗi tháng (tương đương 132 triệu đồng một năm) mới phải đóng thuế thu nhập cá nhân. Mức giảm trừ với mỗi người phụ thuộc là 4,4 triệu đồng một tháng. \r\n\r\nTính toán trước đó của Chính phủ, sẽ có khoảng 1 triệu người không phải nộp thuế thu nhập cá nhân với mức giảm trừ mới.\r\n\r\nTheo quy định mới này, cá nhân có 1-2 người phụ thuộc và thu nhập bình quân mỗi tháng lần lượt từ 15 đến 150 triệu đồng, số thuế phải nộp như sau: ', '../img/thu tuong nguyen xuan phuc.jpg', NULL),
(16, 1, 'Dịch Covid-19 tại Nga dần cải thiện, số ca tử vong ở Brazil vẫn tăng nóng', 'Dịch bệnh Covid-19 tiếp tục hoành hành tại 213 quốc gia và vùng lãnh thổ, lây nhiễm cho hơn 6,6 triệu người và cướp đi mạng sống của 391.078 người.', 'Theo trang thống kê Worldometers, tính đến sáng 5/6, Mỹ vẫn là nước bị dịch bệnh tấn công dữ dội nhất với hơn 1,92 triệu ca nhiễm và hơn 110.100 người tử vong. Trong 24 giờ qua, Mỹ ghi nhận thêm 21.185 ca nhiễm mới và 988 ca tử vong.\r\n\r\nThống đốc New York Andrew Cuomo hôm 4/6 cảnh báo, các cuộc biểu tình đòi công lý cho công dân da màu Geogre Floyd diễn ra ở bang này có thể làm tăng nguy cơ lây nhiễm dịch bệnh.', '', NULL),
(18, 1, 'Bộ trưởng Anh vã mồ hôi, khiến nhiều người lo sợ', 'Bộ trưởng Kinh doanh Alok Sharma có khả năng đã nhiễm Covid-19 do liên tục vã mồ hôi trong lúc phát biểu tại Hạ viện Anh hôm 3/6.', '“Cuộc gặp giữa ông Sharma với Thủ tướng và Bộ trưởng Tài chính diễn ra với khoảng cách 2m. Nếu ông Sharma dương tính với virus Sars-Cov-2, thì ông ấy sẽ được kiểm tra và theo dõi sức khỏe kỹ lưỡng hơn”, BBC trích lời người phát ngôn tòa nhà số 10 phố Downing nói.\r\n\r\nHiện vẫn chưa xác định được ông Sharma có nhiễm bệnh hay không. Nếu kết quả xét nghiệm là dương tính thì tất cả những ai từng tiếp xúc gần với ông sẽ buộc phải cách ly 14 ngày.\r\n\r\nMột số nhân vật thuộc phe đối lập cho rằng, Chính phủ Anh đã sai lầm khi loại bỏ việc cho phép các nghị sĩ tham gia họp bàn và bỏ phiếu từ xa. Một số khác lại lo sợ, các nghị sĩ có thể là những nguồn ‘siêu lây nhiễm’, và mang mầm bệnh đến cho các cử tri của họ.\r\n\r\nTuấn Trần', '../img/Robusta.jpg', NULL),
(19, 1, 'Cô gái bỏ việc đi bộ xuyên Việt tìm giới hạn bản thân', 'Lê Ngọc Hân, 23 tuổi ở Trà Vinh chia sẻ về cuộc hành trình đi bộ hơn 2 nghìn cây số có cả những hiểm nguy và cả những tấm lòng nhân hậu giúp cô vô điều kiện.', 'Ngày 24 của cuộc hành trình, cô đến Huế vào giữa trưa. Trời hôm đó nắng 38 độ C. Nhìn thấy cô gái đội mũ lưỡi trai, tay kéo chiếc xe bằng gỗ đựng hành lý, nhiều người nghĩ, Hân là kẻ lang thang, hoặc có vấn đề về tâm lý.\r\n\r\n‘Lúc đó, dịch bệnh Covid-19 đang có diễn biến phức tạp, các quán ăn, quán nước ở Huế đều đóng cửa. Phải đi giữa trưa nên tôi rất mệt. Ở xe đã có bánh mỳ, nhưng tôi muốn ăn món gì đó có nước.\r\n\r\nĐi qua quán tạp hóa, tôi rẽ vào mua nước uống và hỏi có món gì ăn được không. Chú chủ quán gợi ý tôi nên ăn mỳ ly.  Vì vậy tôi đã mua một ly mì, xin nước sôi đổ vào rồi ngồi ăn ngon lành. Chú của quán nhìn thấy tôi vã mồ hôi giữa trưa thấy thương còn hỏi tôi có ăn cơm không để chú dọn cho ăn\" ', '../img/Ngoc Han.JPG', NULL),
(20, 1, 'Đề xuất nhập số CMND khi nạp thẻ: Chỉ áp dụng 1 lần với SIM sai thông tin', 'Chiều nay, 5/6, đại diện thanh tra Bộ TT&TT đã thông tin thêm với VietNamNet về việc phải nhập CMND khi nạp thẻ.', '\"Tại thời điểm thanh tra diện rộng, 5 doanh nghiệp viễn thông có khoảng 129,9 triệu thuê bao di động. Trong gần 130 triệu thuê bao này, có nhiều triệu thuê bao sai có thông tin không đúng - chẳng hạn dữ liệu trên hệ thống khác với thông tin trên giấy tờ tuỳ thân của chủ thuê bao; Sử dụng cùng một ảnh chụp để thực hiện giao kết hợp đồng theo mẫu, điều kiện giao dịch chung vào các thời điểm khác nhau; Khách hàng không trực tiếp đến điểm cung cấp dịch vụ viễn thông để chụp ảnh nhưng vẫn thực hiện giao kết hợp đồng bằng ảnh chụp từ CMND/CCCD\", vị này cho hay.', '../img/de-xuat-nhap-so-cmnd-khi-nap-the-chi-ap-dung-1-lan-voi-sim-sai-thong-tin-thue-bao.jpg', NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_lien_he`
--
ALTER TABLE `tbl_lien_he`
  ADD PRIMARY KEY (`id_lien_he`);

--
-- Chỉ mục cho bảng `tbl_loai_san_pham`
--
ALTER TABLE `tbl_loai_san_pham`
  ADD PRIMARY KEY (`id_loai_san_pham`);

--
-- Chỉ mục cho bảng `tbl_loai_tin_tuc`
--
ALTER TABLE `tbl_loai_tin_tuc`
  ADD PRIMARY KEY (`id_loai_tin_tuc`);

--
-- Chỉ mục cho bảng `tbl_nguoi_dung`
--
ALTER TABLE `tbl_nguoi_dung`
  ADD PRIMARY KEY (`id_nguoi_dung`);

--
-- Chỉ mục cho bảng `tbl_san_pham`
--
ALTER TABLE `tbl_san_pham`
  ADD PRIMARY KEY (`id_san_pham`);

--
-- Chỉ mục cho bảng `tbl_tin_tuc`
--
ALTER TABLE `tbl_tin_tuc`
  ADD PRIMARY KEY (`id_tin_tuc`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_lien_he`
--
ALTER TABLE `tbl_lien_he`
  MODIFY `id_lien_he` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tbl_loai_san_pham`
--
ALTER TABLE `tbl_loai_san_pham`
  MODIFY `id_loai_san_pham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `tbl_loai_tin_tuc`
--
ALTER TABLE `tbl_loai_tin_tuc`
  MODIFY `id_loai_tin_tuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tbl_nguoi_dung`
--
ALTER TABLE `tbl_nguoi_dung`
  MODIFY `id_nguoi_dung` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `tbl_san_pham`
--
ALTER TABLE `tbl_san_pham`
  MODIFY `id_san_pham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `tbl_tin_tuc`
--
ALTER TABLE `tbl_tin_tuc`
  MODIFY `id_tin_tuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
