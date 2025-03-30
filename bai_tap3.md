# BÀI TẬP VỀ NHÀ 03 - MÔN HỆ QUẢN TRỊ CSDL:

# DEADLINE: 23H59 NGÀY 30/03/2025

# ĐIỀU KIỆN: (ĐÃ LÀM XONG BÀI 2)

## BÀI TOÁN: Sửa bài 2 để có csdl như sau:
  + SinhVien(#masv,hoten,NgaySinh)
  + Lop(#maLop,tenLop)
  + GVCN(#@maLop,#@magv,#HK)
  + LopSV(#@maLop,#@maSV,ChucVu)
  + GiaoVien(#magv,hoten,NgaySinh,@maBM)
  + BoMon(#MaBM,tenBM,@maKhoa)
  + Khoa(#maKhoa,tenKhoa)
  + MonHoc(#mamon,Tenmon,STC)
  + LopHP(#maLopHP,TenLopHP,HK,@maMon,@maGV)
  + DKMH(#id_dk, @maLopHP,@maSV,DiemThi,PhanTramThi)
  + Diem(#id, @id_dk, diem)

## YÊU CẦU:
1. Sửa bảng DKMH và bảng Điểm từ bài tập 2 để có các bảng như yêu cầu.
2. Nhập dữ liệu demo cho các bảng (nhập có kiểm soát từ tính năng Edit trên UI của mssm)
3. Viết lệnh truy vấn để: Tính được điểm thành phần của 1 sinh viên đang học tại 1 lớp học phần.

## HÌNH THỨC LÀM BÀI:
1. Tạo file bai_tap3.md trên cùng repository của bài tập 2:
   Nội dung chứa đề bài, và ảnh chụp quá trình thao tác các yêu cầu khác.
2. Chụp ảnh quá trình sửa bảng DKMH và quá trình thêm bảng Diem, chú ý @ là FK, và thêm CK cho trường điểm
3. Hình sau khi chụp paste trực tiếp vào file bai_tap3.md trên github, cần mô tả các phần trên ảnh để tỏ ra là hiểu hết!
4. dùng tính năng: Tasks -> Generate Scrips => sinh ra file: bai_tap_3_schema.sql  (chỉ chứa lệnh tạo cấu trúc của db)
5. dùng tính năng: Tasks -> Generate Scrips => advance => Check Data only => sinh ra file: bai_tap_3_data.sql  (chỉ chứa dữ liệu đã nhập demo vào db)
6. Tạo diagram mô tả các PK, FK của db. Chụp hình kết quả các bảng có các đường nối 1-->nhiều
7. upload 2 file  bai_tap_3_schema.sql và bai_tap_3_data.sql lên repository.
8. nhớ commit để save nội dung file bai_tap3.md

## DEADLINE: 23H59 NGÀY 30/03/2025

## BÀI LÀM 
### 1. Sửa bảng DKMH và bảng Điểm từ BÀI TẬP 2 để có các bảng như yêu cầu.
- 1.1. Sửa bảng DKMH ( xoá trường DiemTP -> Thêm trường ID_dk )
![Screenshot (404)](https://github.com/user-attachments/assets/a970b95a-f876-4d1d-967a-03fdcd46888c)

- 1.2. Tạo bảng Diem(#id, @id_dk, diem)
+ 1.2.1. Thao tác tạo new table
![Screenshot (408)](https://github.com/user-attachments/assets/5348ded5-9675-4fb1-807f-67f0af7b2021)

+ 1.2.2. Tạo bảng 
![Screenshot (409)](https://github.com/user-attachments/assets/b17a1702-37d8-4318-b4c6-4c2830aa62a5)

- 1.3. Nhập dữ liệu demo cho các bảng
![Screenshot (411)](https://github.com/user-attachments/assets/673c1485-66dd-4f58-83e2-eeb2b5231b48)

- 1.3.1. Hình ảnh 2 bảng sau khi hoàn thành
+ DKMH(#id_dk, @maLopHP,@maSV,DiemThi,PhanTramThi)
![Screenshot (420)](https://github.com/user-attachments/assets/23bb36e3-5d90-4a4e-b65a-8b94c4205c96)

+ Diem(#id, @id_dk, diem)
![Screenshot (421)](https://github.com/user-attachments/assets/e7526af4-d038-40d7-a021-3d2fea49a2c1)

### 2. Tạo FK giữa 2 bảng DKMH và Diem 
- 2.1. Thao tác tạo khoá ngoại (FK)
![Screenshot (422)](https://github.com/user-attachments/assets/dd0d5c35-6282-48d6-91e9-66d04cfe287b)

- 2.2. Thiết lập khoá ngoại
![Screenshot (423)](https://github.com/user-attachments/assets/204371f2-3b1d-4857-881b-7e55daa51f65)

- 2.3. Kiểm tra bảng DKMH
![Screenshot (426)](https://github.com/user-attachments/assets/41a7c5e2-368a-4970-8606-bc6d5db8ba51)

### 3. Thêm CK cho trường điểm tại bảng Diem
- 3.1. Thao tác thêm CK
![Screenshot (428)](https://github.com/user-attachments/assets/94dae84e-6778-4f3e-9a0b-533dd8f96718)

- 3.2. Thêm CK cho trường điểm
![Screenshot (431)](https://github.com/user-attachments/assets/f7a0b688-72b5-4c16-8215-be4005df23b3)

- 3.3. Kiểm tra CK
![Screenshot (433)](https://github.com/user-attachments/assets/25542774-e687-486a-beab-919dc8d1f02a)

### 4. Tạo Diagram mô tả các PK, FK của Database
- 4.1. Thao tác tạo Diagram
![Screenshot (434)](https://github.com/user-attachments/assets/3bbe76e9-f66f-4197-ae27-cef6afb5da4f)

- 4.2. Kết quả
![Screenshot (438)](https://github.com/user-attachments/assets/14387190-e7fa-4b25-a1c5-b983402634a2)

### 5. Viết lệnh truy vấn để: Tính được điểm thành phần của 1 sinh viên đang học tại 1 lớp học phần
- 5.1. Thao tác thực hiện
![Screenshot (441)](https://github.com/user-attachments/assets/5500d1d8-0ded-4dfb-b9f4-689d935759fd)

- 5.2. Thực hiện viết lệnh truy vấn: tính điểm thành phần
![Screenshot (444)](https://github.com/user-attachments/assets/7052395a-e314-4916-971d-ad8830dc084b)

- 5.3. Kết quả
![Screenshot (442)](https://github.com/user-attachments/assets/dc62da60-b0ce-472f-83df-a786fc5f2f9c)




