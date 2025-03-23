# Bài tập 02 của sv: K225480106093 - Nguyễn Đức Dương - Môn hệ quản trị csdl
## BÀI TẬP VỀ NHÀ 02 - MÔN HỆ QUẢN TRỊ CSDL:
## DEALINE: 23H59 NGÀY 25/03/2025
## ĐIỀU KIỆN: (ĐÃ LÀM XONG BÀI 1)
1. Đã cài đặt SQL Server 2022 Dev.
2. Đã cài đặt SQL Managerment Studio bản mới nhất.
3. Đã kết nối từ SQL Managerment Studio vào SQL Server.
4. Đã có tài khoản github, biết cách tạo repository(kho lưu trữ) cho phép truy cập public.
## BÀI TOÁN:
- Tạo csdl quan hệ với tên QLSV gồm các bảng sau:
  + SinhVien(#masv,hoten,NgaySinh)
  + Lop(#maLop,tenLop)
  + GVCN(#@maLop,#@magv,#HK)
  + LopSV(#@maLop,#@maSV,ChucVu)
  + GiaoVien(#magv,hoten,NgaySinh,@maBM)
  + BoMon(#MaBM,tenBM,@maKhoa)
  + Khoa(#maKhoa,tenKhoa)
  + MonHoc(#mamon,Tenmon,STC)
  + LopHP(#maLopHP,TenLopHP,HK,@maMon,@maGV)
  + DKMH(#@maLopHP,#@maSV,DiemTP,DiemThi,PhanTramThi)
## YÊU CẦU:
1. Thực hiện các hành động sau trên giao diện đồ hoạ để tạo cơ sở dữ liệu cho bài toán:
  + Tạo database mới, mô tả các tham số(nếu có) trong quá trình.
  + Tạo các bảng dữ liệu với các trường như mô tả, chọn kiểu dữ liệu phù hợp với thực tế (tự tìm hiểu)
  + Mỗi bảng cần thiết lập PK, FK(s) và CK(s) nếu cần thiết. (chú ý dấu # và @: # là chỉ PK, @ chỉ FK)
2. Chuyển các thao tác đồ hoạ trên thành lệnh SQL tương đương. lưu tất cả các lệnh SQL trong file: Script_DML.sql
## HÌNH THỨC LÀM BÀI:
1. Tạo repository mới, tạo file readme.md (có hướng dẫn trên zalo group)
2. Sinh viên thao tác trên máy tính cá nhân, chụp màn hình quá trình làm, chỉ cần chụp active window, thi thoảng chụp full màn hình để thấy sự cá nhân hoá.
3. Hình sau khi chụp paste trực tiếp vào file readme trên github, cần mô tả các phần trên ảnh để tỏ ra là hiểu hết!
4. upload các file liên quan: Script_DML.sql
5. Update link của repository vào cột bài tập 2 trên file excel online của thầy (đã ghim link trên zalo group)
## Chú ý:
1. Được phép dùng AI và tham khảo bài của bạn, nhưng phải có sự khác biệt đáng kể.
2. Nghiêm cấm copy, clone. Tham khảo và copy là 2 việc khác hẳn nhau. Thầy có tool để check!
3. Bài làm phải có dấu ấn cá nhân (hãy sáng tạo và biết cách bảo vệ mình nếu bạn là bản chính)
4. Kết quả AI phải phù hợp với yêu cầu, nếu quá sai lệch <=> sv ko đọc => Cấm thi
5. Nên nhớ: cấm thi là ko có vùng cấm và thầy chưa bao giờ nói đùa về việc cấm thi.
## BÀI LÀM:
### 1.Tạo database.
Bước 1: Bước đầu tiên bạn mở SQL Server Managerment Studio và kết nối đến SQL Server.
![image](https://github.com/user-attachments/assets/396f9c1b-ecc4-4038-8bd8-1799ad86e2b5)

Bước 2: Tạo database mới.
1. Click chuột phải vào DATABASE tại giao diện chính của SQL Server Managerment Studio
2. Chọn New Database...
![image](https://github.com/user-attachments/assets/83b4f309-1c28-44a1-8608-efe659e13e37)

1. Tại phần Database Name: Tiến hành đặt tên cho Database.
2. Tại phần Database Files: Có thể chọn dấu "..." ở cột Path để thay đổi vị trí lưu các Files LOG và ROWS Data.
3. Sau đó chọn OK.
![Screenshot (290)](https://github.com/user-attachments/assets/3f0f87f3-7ce6-43ce-a476-6eb670ca101e)

### 2. Tạo Bảng (TABLE).
Bước 1: Tại DB vừa tạo Click chuột vào, chọn TABLES -> New -> Table...
![Screenshot (293)](https://github.com/user-attachments/assets/25944ef7-6181-48d7-b412-7a7f4f92b4af)

Bước 2: Tại giao diện tiếp theo, ta tiến hành nhập các trường thuộc tính cho bảng.
+ SinhVien(#masv,hoten,NgaySinh) 
![Screenshot (296)](https://github.com/user-attachments/assets/02f85043-eeeb-49bc-a5ea-42fa9fa107f0)

+ Lop(#maLop,tenLop)
