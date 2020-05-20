-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 20, 2020 lúc 03:15 PM
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
(1, 'Chu Văn Huy', 'chuvanhuy@gmail.com', '123', NULL),
(2, 'Trần Phương Linh', 'linhtp@gmail.com', '123', NULL),
(3, 'Quách Thị Hải Yến', 'yenqth@gmail.com', '123', NULL),
(4, 'Trần Mạnh Hùng', 'hungtm@gmail.com', '123', NULL);

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
(1, 2, 'Hải Dương chẳng cần chi tiền tỷ, dùng máy xét nghiệm HIV tìm Covid-19', 'Tỉnh Hải Dương đã xét nghiệm Covid-19 hơn 3.000 mẫu bằng cách tận dụng máy cũ. Cán bộ y tế phải làm việc liên tục với cường độ cao, nhưng bù lại đã tiết kiệm cho ngân sách nhiều tỷ đồng.', 'Bé trai này cùng gia đình đi du lịch từ Hà Nội đến Quảng Ninh, trên đường cao tốc Hà Nội - Hải Phòng thì có biểu hiện của bệnh.\r\n\r\nTrung tâm Kiểm soát bệnh tật (CDC) tỉnh Hải Dương ngay sau đó đã khử khuẩn Trung tâm y tế huyện Gia Lộc, cách ly, lấy máu xét nghiệm hơn 10 nhân viên y tế có tiếp xúc, điều trị cho cháu bé.\r\n\r\nTối 18/3, Bộ Y tế công bố bệnh nhân thứ 73, là 1 cháu bé mang quốc tịch Anh, 11 tuổi, địa chỉ ở huyện Thanh Miện, về Việt Nam trên chuyến bay VN0054. Đây cũng là trường hợp đầu tiên ở Hải Dương dương tính với Covid-19.', NULL, NULL),
(2, 2, 'Bí thư Thái Bình Nguyễn Hồng Diên làm Phó Ban Tuyên giáo TƯ', 'Bộ Chính trị điều động, phân công ông Nguyễn Hồng Diên giữ chức Phó trưởng Ban Tuyên giáo TƯ.', 'Ông Nguyễn Hồng Diên sinh năm 1965, quê quán ở xã Hồng Minh, huyện Hưng Hà, Thái Bình.\r\n\r\nÔng là cử nhân Lịch sử, cử nhân Kinh tế, tiến sĩ Quản lý hành chính công.\r\n\r\nÔng trưởng thành từ cán bộ Đoàn, từng kinh qua các vị trị Bí thư Tỉnh đoàn, Chánh Văn phòng Tỉnh ủy, Bí thư Huyện ủy Vũ Thư, Trưởng Ban Tuyên giáo Tỉnh ủy, Phó bí thư thường trực Tỉnh ủy, Chủ tịch HĐND, Chủ tịch UBND tỉnh Thái Bình.\r\n\r\nNgày 27/4/2018, ông Nguyễn Hồng Diên được hội nghị BCH Đảng bộ tỉnh bầu làm Bí thư Tỉnh ủy Thái Bình nhiệm kỳ 2015 - 2020.\r\n\r\nÔng giữ cả hai chức Bí thư Tỉnh ủy, Chủ tịch UBND tỉnh Thái Bình trong 3 tháng.\r\n\r\nĐến ngày 30/7/2018, HĐND tỉnh Thái Bình họp phiên bất thường, 100% đại biểu có mặt đã đồng ý miễn nhiệm chức danh Chủ tịch UBND tỉnh đối với ông Nguyễn Hồng Diên, đồng thời bầu ông làm Chủ tịch HĐND tỉnh.', NULL, NULL),
(3, 5, 'MU chốt chuyển nhượng Jack Grealish 50 triệu bảng', 'Lãnh đạo Quỷ đỏ bắt đầu thương thảo với đại diện Jack Grealish để bàn về vấn đề chuyển nhượng tiền vệ trị giá 50 triệu bảng hè tới.', 'Chiến lược gia người Na Uy cũng rất hâm mộ lối chơi và tài năng Jack Grealish, bất chấp cách hành xử bên ngoài sân cỏ bị đặt dấu hỏi.\r\n\r\nHồi tháng 3 vừa qua, Jack Grealish bị Aston Villa phạt 150.000 bảng Anh và buộc phải đăng đàn xin lỗi công khai do đi tiệc tùng trong giai đoạn cách ly xã hội ở Anh.\r\n\r\nTuy thế, các sếp MU vẫn tin tưởng vào những điều tốt đẹp mà Grealish có thể mang lại. Đây là chàng cầu thủ cá tính, không ngại sức ép, sẵn sàng đương đầu thử thách mới tại Old Trafford.\r\n\r\nQuỷ đỏ đang là ƯCV hàng đầu muốn có sự phục vụ của Jack Grealish. Phía Aston Villa sẽ đòi mức phí chuyển nhượng lên đến 70 triệu bảng.\r\n\r\nMặc dù vậy, nếu đội chủ sân Villa Park xuống hạng hè tới, Jack Grealish có thể gia nhập MU với giá chỉ 50 triệu bảng.\r\n\r\nSolskjaer muốn tăng thêm khả năng sáng tạo cho hàng tiền vệ nên bổ sung thêm Jack Grealish thi đấu bên cạnh tân binh Bruno Fernandes.\r\n\r\nNguồn tin từ SunSport cũng cho hay, Paul Pogba dường như không còn nằm trong kế hoạch của Solskjaer. MU sẽ bán nhà vô địch World Cup 2018 nếu nhận được lời đề nghị hợp lý.\r\n\r\nPogba dính chấn thương liên miên và số trận thi đấu kể từ đầu mùa chỉ đếm trên đầu ngón tay. Hiện anh vẫn nhận được sự quan tâm từ các ông lớn như Real Madrid, Juventus hay PSG.', NULL, NULL),
(4, 2, 'Thái Bình chi sai hơn 7,58 tỷ đồng lương hưu cho hàng ngàn giáo viên', 'Theo số liệu báo cáo của BHXH, tỉnh Thái Bình đã chi sai tiền lương hưu cho 974 giáo viên mầm non với tổng số tiền hơn 7,58 tỷ đồng, đến nay mới thu hồi được gần 3,39 tỷ (44,7%).', 'Bên cạnh đó, vẫn còn một số kiến nghị của cử tri yêu cầu tổ chức kiểm tra, xử lý trách nhiệm đối với các cá nhân, tập thể khi để xảy ra sai phạm nhưng cơ quan có thẩm quyền thường chỉ trả lời chung chung, không nêu rõ kết quả kiểm tra, xử lý vi phạm.\r\n\r\nĐơn cử như cử tri tỉnh Thái Bình đề nghị làm rõ trách nhiệm trong việc tính toán, chi trả sai lương hưu dẫn đến phải điều chỉnh và thu hồi lương hưu đối với hàng nghìn giáo viên mầm non đã nghỉ hưu trước năm 1998.\r\n\r\nTrả lời cử tri, BHXH Việt Nam cho biết, ở tỉnh Thái Bình đã chi sai lương hưu cho 974 giáo viên mầm non với tổng số tiền hơn 7,58 tỷ đồng. Từ năm 2018 đến nay, BHXH tỉnh Thái Bình mới chỉ thu hồi được gần 3,39 tỷ đồng (44,7%).\r\n\r\nNgoài Thái Bình, còn một số địa phương có sai sót trong nghiệp vụ dẫn đến sai sót trong việc tính bình quân tiền lương tháng đóng BHXH để làm căn cứ tính lương hưu đối với giáo viên mầm non được truy đóng BHXH.\r\n\r\nBan Dân nguyện cho rằng, trả lời của BHXH cho thấy, sai phạm trong tính toán chi trả tiền lương hưu đối với một số giáo viên mầm non tại Thái Bình là có và hiện BHXH đang khắc phục hậu quả.\r\n\r\nTuy nhiên, chưa làm rõ trách nhiệm theo đề nghị của cử tri.\r\n\r\nVì vậy, Ban Dân nguyện kiến nghị BHXH Việt Nam tiếp tục rà soát các sai phạm nêu trên trong phạm vi toàn quốc, có phương án xử lý thống nhất, hiệu quả để thu hồi số tiền chi sai nộp vào quỹ BHXH, không gây ảnh hưởng lớn đến đời sống của giáo viên và kiến nghị cơ quan có thẩm quyền xử lý trách nhiệm đối với cá nhân, tập thể để xảy ra sai phạm.\r\n\r\nRiêng đối với cử tri Thái Bình, BHXH cần bổ sung văn bản trả lời, nêu rõ kết quả xử lý trách nhiệm của cá nhân, tập thể có sai phạm của các cơ quan có thẩm quyền .', NULL, NULL),
(5, 2, 'Thủ tướng đề nghị chưa tăng lương cơ sở và lương hưu từ 1/7', 'Đề nghị QH xem xét, cân nhắc trước mắt chưa tăng mức lương cơ sở đối với cán bộ, công chức, viên chức, lực lượng vũ trang và lương hưu từ ngày 1/7 do ảnh hưởng của dịch Covid-19.', 'Tại phiên khai mạc kỳ họp thứ 9 QH sáng nay, Thủ tướng Nguyễn Xuân Phúc báo cáo về phòng chống dịch Covid-19 và những nhiệm vụ giải pháp trọng tâm phục hồi, phát triển KT-XH.\r\n\r\nThủ tướng cho biết, trong những tháng đầu năm, tình hình quốc tế, trong nước có những biến động lớn chưa từng có do tác động của dịch Covid-19.\r\n\r\nToàn Đảng, toàn dân, toàn quân đã chung sức, đồng lòng, nỗ lực vượt bậc, tập trung thực hiện “mục tiêu kép”. Đó là vừa quyết liệt phòng chống dịch bệnh với tinh thần “chống dịch như chống giặc”, vừa quyết tâm duy trì, phục hồi, phát triển các hoạt động KT-XH và bảo đảm đời sống của nhân dân.', 'thu_tuong_de_nghi_chua_tang_luong_nam_2020.jpg', NULL),
(6, 2, 'Bộ Quốc phòng: Sẵn sàng đấu tranh với các nhóm tàu xâm phạm vùng biển', 'Bộ Quốc phòng: Sẵn sàng đấu tranh với các nhóm tàu xâm phạm vùng biển', 'Cử tri TP.HCM đề nghị Đảng, Nhà nước cần tiếp tục kiên quyết, kiên trì thực hiện các biện pháp phù hợp trong đấu tranh bảo vệ chủ quyền biển, đảo kịp thời thông tin đến nhân dân; tăng cường tiềm lực quốc phòng nhằm đáp ứng yêu cầu bảo vệ Tổ quốc.\r\n\r\nTrung Quốc đẩy mạnh yêu sách phi lý trên Biển Đông\r\n\r\nTrả lời cử tri, Bộ Quốc phòng cho biết, tình hình Biển Đông thời gian gần đây diễn biến theo hướng phức tạp, căng thẳng và mất ổn định hơn, đưa đến những thách thức mới đối với quốc phòng, an ninh của ta.\r\n\r\nTrung Quốc đẩy mạnh các hoạt động nhằm khẳng định chủ quyền theo yêu sách phi lý trên Biển Đông; bên cạnh đó các hoạt động khẳng định chủ quyền của các nước trong khu vực, sự can dự của các nước lớn ngoài khu vực đã làm cho tình hình Biển Đông trở nên phức tạp thêm.', 'bo-quoc-phong-san-sang-dau-tranh-voi-cac-nhom-tau-xam-pham-vung-bien-cua-ta.jpg', NULL);

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
  MODIFY `id_tin_tuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
