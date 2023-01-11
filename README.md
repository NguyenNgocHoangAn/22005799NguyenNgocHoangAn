# 22005799NguyenNgocHoangAn
Họ và Tên: Nguyễn Ngọc Hoàng Ân
MSSV: 22005799
Lớp: 22C2B-LTM1
Đề tài: PHẦN MỀM QUẢN LÍ BÁN LAPTOP

Tải code về giải nén chạy file

MỞ NetBean -> Open Project 
TRƯỚC KHI CHẠY BÀI HÃY NHẤN VÀO THƯ MỤC  Data -> classData *ĐỂ ĐỔI CẤU HÌNH KẾT NỐI VÀO DATABASE SQL
HƯỚNG DẴN :
private String serverName = "Admin"; 
    private String port ="1433";
    private String databaseName = "QUANLIBANLAPTOP";
    private String username = "sa";
    private String password = "1234";

Ở ĐÂY Admin,1433,sa,1234 
1. LÀ SERVER NAME KHI VÀO SQL SERVER SẼ THẤY BẢNG CHỌN HIỆN RA ĐẦU TIÊN * SẼ LÀ THAY THẾ CHO PHẦN ADMIN
2. LÀ VÀO SETTING HỆ THỐNG MÁY TÍNH TÊN THIẾT BỊ * SẼ LÀ THAY THẾ CHO PHẦN ADMIN 
3. 1433 LÀ TCP/IP CỦA SQL 
4. private String databaseName = "QUANLIBANLAPTOP" LÀ TÊN FILE CHẠY TRONG SQL CỦA BÀI 
5.  private String username = "sa"
    private String password = "1234" 
    LÀ TÀI KHOẢN VÀ MẬT KHẨU ĐĂNG NHẬP VÀO SQL SERVER , MỖI MÁY CÓ TÀI KHOẢN HOẶC MẬT KHẨU KHÁC NHAU DO MỖI NGƯỜI TỰ TẠO
6. Khi mở bài chạy hiện thư mục báo lỗi thì thoát và click chuột phải vào phần Libraries -> Add JAR/Folder... -> Tìm thư mục lib trong file bài làm add vào là xong
7. Khi Đăng Nhập Vào Form Những Tài Khoản Quản Lý NHững Trang Dữ Liệu Cần Bấm " Làm Mới"  Để Hiện Những Dữ Liệu Trong File SQL Đang Mỏ 

VÀO THƯ MỤC Database+query_QUANLIBANLAPTOP SẼ THẤY FILE SQL QUANLIBANLAPTOP NHẤN ĐÚP VÀO 
1. KHI Mở FILE CÓ ĐUÔI SQL bỏ file vào bôi đen tất cả đoạn code và chạy , hoặc tạo Database -> New Database trước khi * LƯU Ý : PHẢI ĐẶT TÊN FILE TRÙNG 
2. CÁCH KHÁC LẤY 2 FILE QUANLIBANLAPTOP LẦN LƯỢT CÓ ĐUÔI .LDP VÀ .MDF, TIẾP THEO TÌM THƯ MỤC C:\Program Files\Microsoft SQL Server
3. TÌM ĐẾN FILE MSSQL13.MSSQLSERVER\MSSQL\DATA RỒI DÁN 2 FILE VÀO ĐÓ 
4. VÀO SQL SERVER NHẤP CHUỘT TRÁI VÀO MỤC Databases => Attach... => NHẤN ADD RỒI TÌM  ĐẾN VÀ MỞ THƯ MỤC MSSQL13.MSSQLSERVER\MSSQL\DATA BẤM FILE QUANLIBANLATOP.MDF => OK
* CHÚ Ý: MỖI MÁY SẼ CÓ THƯ MỤC MSSQL13.MSSQLSERVER KHÁC NHAU DO PHIÊN BẢN CÀI CHỈ CẦN TÌM TÊN MSSQL  .MSSQL KHI BẤM VÀO THƯ MỤC MSSQL HIỆN THƯ MỤC DATA LÀ ĐÚNG


Mật Khẩu và Tài Khoản Đăng Nhập
PHẦN ADMIN Cao Nhat:
TenDangNhap: TaLaGiamDoc Pasword: 123456
PHẦN ADMIN Quản Lý Nhân Viên, Tài Khoản:
TenDangNhap: Administrator Pasword: 123456
PHẦN ADMIN Quản Lý Sản Phẩm, Đơn Đặt Hàng, Phiếu Nhập,Phiếu Đặt Hàng, Báo Cáo:
TenDangNhap: Manager Pasword: 123456
TenDangNhap: XN1111  Pasword: 123456
PHẦN NHÂN VIÊN:
TenDangNhap: xuatnhap1 TenDangNhap: 123456
TenDangNhap: lvdinh TenDangNhap: 123456
TenDangNhap: TT1 TenDangNhap: 123456
TenDangNhap: TK1  TenDangNhap:123456
TenDangNhap: PK1  TenDangNhap:123456






