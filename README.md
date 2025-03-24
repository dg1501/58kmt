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
![image](https://github.com/user-attachments/assets/b3a3db88-99eb-4bf4-8832-797ba1028a4d)
![image](https://github.com/user-attachments/assets/396f9c1b-ecc4-4038-8bd8-1799ad86e2b5)

Bước 2: Tạo database mới.
1. Click chuột phải vào DATABASES tại giao diện chính của SQL Server Managerment Studio
2. Chọn New Database...
![image](https://github.com/user-attachments/assets/83b4f309-1c28-44a1-8608-efe659e13e37)

1. Tại phần Database Name: Tiến hành đặt tên cho Database.
2. Phần Owner có thể để nguyên là Default vì SQL Server sẽ tự động gán chủ sở hữu (owner) của database là tài khoản đang kết nối, thường là tài khoản sa (system adminstratos)
3. Tại phần Database Files: Có thể chọn dấu "..." ở cột Path để thay đổi vị trí lưu các Files LOG và ROWS Data.
4. Sau đó chọn OK.
![Screenshot (290)](https://github.com/user-attachments/assets/3f0f87f3-7ce6-43ce-a476-6eb670ca101e)

### 2. Tạo Bảng (TABLE).
Bước 1: Tại DB vừa tạo Click chuột vào, chọn TABLES -> New -> Table...
![Screenshot (293)](https://github.com/user-attachments/assets/25944ef7-6181-48d7-b412-7a7f4f92b4af)

Bước 2: Tại giao diện tiếp theo, ta tiến hành nhập các trường thuộc tính cho bảng.  
- Sau khi nhập xong các thuộc tính, chọn kiểu dữ liệu phù hợp và khoá chính -> Nhấn tổ hợp phím Ctrl + S để lưu bảng.
+ Bảng SinhVien(#masv,hoten,NgaySinh) 
![Screenshot (296)](https://github.com/user-attachments/assets/02f85043-eeeb-49bc-a5ea-42fa9fa107f0)

**Lưu ý**: Khi tạo bảng ta sẽ thấy có xuất hiện cột Allow Nulls: Cột này sẽ quyết định xem 1 cột có thể chứa giá trị Null hay không.
+ Cụ thể: 1 cột sẽ bắt buộc phải có giá trị Not Null khi nó là khoá chính hoặc 1 trường quan trọng cần có giá trị.
+ Ngược lại: 1 cột có giá trị Null sẽ không bắt buộc phải nhập khi thêm dữ liệu.

**Các kiểu dữ liệu thường gặp khi tạo bảng trong SQL**

**NUMERIC**
  - INT: Số nguyên
  - FLOAT: Số thực
  - DECIMAL: Số thực chính xác cao( dùng cho tiền, dữ liệu ,..)

**STRING**
  - NCHAR(N): Chuỗi có độ dài thay đổi và không hỗ trợ Unicode
  - NVARCHAR(n): Chuỗi có độ dài thay đổi và hỗ trợ Unicode

**DATE & TIME**
  - DATE: Lưu ngày (YYYY-MM-DD)


+ Bảng Lop(#maLop,tenLop)
![image](https://github.com/user-attachments/assets/e01cb0e1-76b2-4402-b81b-e1d2aa72d2f9)

+ Bảng GVCN(#@maLop,#@magv,#HK)
![image](https://github.com/user-attachments/assets/8b376890-7303-4ab5-8c4b-7f8b81fb703a)

+ Bảng LopSV(#@maLop,#@maSV,ChucVu)
![image](https://github.com/user-attachments/assets/34998b02-e069-4b01-8cf3-ab62c33de01a)

+ Bảng GiaoVien(#magv,hoten,NgaySinh,@maBM)
![image](https://github.com/user-attachments/assets/5298d9b6-f631-435d-aa0e-77dba0b421d4)

+ Bảng BoMon(#MaBM,tenBM,@maKhoa)
![image](https://github.com/user-attachments/assets/c823ac5f-b5c7-4a2c-95ac-d63666c48f59)

+ Bảng Khoa(#maKhoa,tenKhoa)
![image](https://github.com/user-attachments/assets/34c107b3-83ae-42ee-b73a-9c54079e3204)

+ Bảng MonHoc(#mamon,Tenmon,STC)
![image](https://github.com/user-attachments/assets/0e83b4ed-2971-4483-a58d-604ff67cb065)

+ Bảng LopHP(#maLopHP,TenLopHP,HK,@maMon,@maGV)
![image](https://github.com/user-attachments/assets/226b5537-5d54-4312-a083-d18f7e15a8ca)

+ Bảng DKMH(#@maLopHP,#@maSV,DiemTP,DiemThi,PhanTramThi)
![image](https://github.com/user-attachments/assets/01e09ca6-248c-4fe2-b4e4-1dec645033a3)


### 3. Thiết lập PK và FK.
1. KN
- Khoá chính(PK) là giá trị duy nhất và không được Null trong bảng.
- Khoá ngoại(FK) dùng để thiết lập mối quan hệ giữa hai bảng hay nhiều bảng, nó tham chiếu đến khóa chính của một bảng khác, giúp đảm bảo tính toàn vẹn dữ liệu.
- Khoá ứng viên(CK) là một tập hợp một hoặc nhiều cột trong bảng có khả năng làm khóa chính vì nó đảm bảo duy nhất từng hàng dữ liệu.
2. Để thiết lập khoá chính PK:  
**Có 2 cách**
- Cách 1: Tại bảng ta chọn vào 1 hay nhiều thuộc tính mà ta muốn làm khoá chính, sau đó chọn vào biểu tượng KEY trên thanh công cụ.
![Screenshot (314)](https://github.com/user-attachments/assets/8470087e-a852-4189-973e-ffbc861d6b64)

- Cách 2:
+ Tại giao diện Tables, ta chọn vào bảng muốn thiết lập -> Script table as -> CREATE to -> New Query Editor Window
![Screenshot (315)](https://github.com/user-attachments/assets/c2fcaa04-8b8a-46f3-82ae-32ee80a7f0b9)

+ Sau đó ta thực hiện gõ các dòng lệnh như trong hình để thiết lập PK
![Screenshot (316)](https://github.com/user-attachments/assets/671da820-ef00-4bd2-8ac1-c0516f0d213c)

**Giải thích lệnh**
+ CONSTRAINT [PK_name] PRIMARY KEY CLUSTERED (): Tạo khóa chính (PRIMARY KEY) cho bảng, đảm bảo giá trị trong khóa chính là duy nhất và không chứa giá trị NULL.
+ [name_thuộc tính] ASC: Xác định thuộc tính làm khoá chính.

3. Thiết lập khoá ngoại FK:  
**Có 2 cách**
- Cách 1:
+ Tại giao diện New Query Editor Window như trên, ta thực hiện các lệnh sau để thiết lập FK:
![image](https://github.com/user-attachments/assets/8773d3a2-c268-4853-96a9-785350b36ed5)

**Giải thích lệnh**
+ ALTER TABLE [dbo].[LopSV] : Chỉnh sửa bảng LopSV
+ ADD CONSTRAINT FK_LopSV_Lop FOREIGN KEY ([malop]) REFERENCES [dbo].[Lop]([malop]): Thêm ràng buộc khóa ngoại (FOREIGN KEY) có tên FK_LopSV_Lop trên cột malop của bảng LopSV.

- Sau khi thực hiện lệnh ta sẽ thấy " Commands completed successfully. " dưới phần Messages.
![Screenshot (319)](https://github.com/user-attachments/assets/1c63cc6f-2695-4d7b-8c1a-773f99a6bb0a)

- Để kiểm tra sự ràng buộc giữa các bảng ta thực hiện lệnh:
"  SELECT name 
   FROM sys.foreign_keys 
   WHERE parent_object_id = OBJECT_ID('dbo.LopSV'); "
![Screenshot (320)](https://github.com/user-attachments/assets/92545d6a-0ab0-4e06-85e4-5e5f6340c36f)

- Sau khi thực hiện xong, tại Messages ta sẽ thấy sự ràng buộc của bảng LopSV với các bảng Lop và SinhVien.

**Giải thích lệnh**
+ SELECT name: Chọn cột name, tức là tên của các khóa ngoại trong bảng.
+ FROM sys.foreign_keys: là bảng hệ thống của SQL Server, chứa thông tin về tất cả các khóa ngoại trong cơ sở dữ liệu.
+ WHERE parent_object_id = OBJECT_ID('dbo.LopSV'): Lọc dữ liệu trong bảng hệ thống sys.foreign_keys, chỉ lấy thông tin về các khóa ngoại của bảng LopSV.

- Cách 2:
+ Chọn Relationships như hình dưới
![Screenshot (332)](https://github.com/user-attachments/assets/0495dc86-1b57-464d-ba22-8c4d0cc80327)

+ Tại giao diện tiếp theo: Chọn Add-> thực hiện đổi tên tại Identiny (name) -> sau đó tiến hành thiết lập FK tại Tables and Columns Spec
![image](https://github.com/user-attachments/assets/a4abdc3f-03c1-4c53-a38e-366f48c66689)  

**Giải thích:** Lấy VD bảng Giao Vien và bảng GVCN

- GiaoVien(#magv, hoten, NgaySinh, @maBM)
+ magv là Primary Key (PK) của bảng GiaoVien, đảm bảo mỗi giáo viên có một mã duy nhất.
- GVCN(#@maLop, #@magv, HK)
+ maLop và magv cùng tạo thành Primary Key (PK) của bảng GVCN
+ maGV trong GVCN là Foreign Key (FK) tham chiếu đến magv trong bảng GiaoVien, đảm bảo rằng một giáo viên được phân công làm GVCN phải tồn tại trong danh sách GiaoVien.
![image](https://github.com/user-attachments/assets/b5c0768e-db41-4a18-b22c-4a3c67c78f49)

- Sau khi thực hiện xong các thiết lập -> nhấn tổ hợp phím Ctrl + S để lưu thiết lập.

**Làm tương tự với các bảng khác**
- Bảng GiaoVien(#magv,hoten,NgaySinh,@maBM)
![Screenshot (321)](https://github.com/user-attachments/assets/8e6d39ee-07c7-4619-b9fa-6653b5a52caf)

- Bảng BoMon(#MaBM,tenBM,@maKhoa)
![image](https://github.com/user-attachments/assets/c02996df-bdfe-494d-827f-fc2f50bb90e0)

- Bảng LopHP(#maLopHP,TenLopHP,HK,@maMon,@maGV)
![image](https://github.com/user-attachments/assets/0e9d9ce9-7ba1-4e3c-a679-422ad95aa7a4)

- Bảng DKMH(#@maLopHP,#@maSV,DiemTP,DiemThi,PhanTramThi)
![image](https://github.com/user-attachments/assets/6fe08053-8b51-4143-95aa-06400bb0b623)

- Bảng GVCN(#@maLop,#@magv,#HK)
![image](https://github.com/user-attachments/assets/adafce16-0677-4f51-acca-57d9f013a567)

**Nhập thông tin cho các bảng**
1. Bảng SinhVien(#masv,hoten,NgaySinh)
![Screenshot (336)](https://github.com/user-attachments/assets/02e29558-9b7c-4907-b7c8-478646902332)

- Sau khi thực hiện các thao tác như hình trên, ta sẽ được 1 giao diện nhập bảng.
![Screenshot (338)](https://github.com/user-attachments/assets/0fd24b23-eec6-4923-b74f-75a0a8a3f92e)

**Làm tương tự với các bảng khác*  

2. Bảng Lop(#maLop,tenLop)
![image](https://github.com/user-attachments/assets/b08b0bcb-e745-4c4a-b347-19c297864aeb)

3. Bảng GVCN(#@maLop,#@magv,#HK)
![Screenshot (374)](https://github.com/user-attachments/assets/a5e760be-a549-4277-a51a-10fdc6bb5d37)

4. Bảng Khoa(#maKhoa,tenKhoa)
![Screenshot (341)](https://github.com/user-attachments/assets/49c7c6b3-bc57-400b-b6ad-8b11f72c4b1e)

5. Bảng BoMon(#MaBM,tenBM,@maKhoa)
![image](https://github.com/user-attachments/assets/671fe504-0fca-481e-966f-241f64535042)

6. Bảng GiaoVien(#magv,hoten,NgaySinh,@maBM)
![image](https://github.com/user-attachments/assets/71caea1a-4d3e-4426-85db-c0cde5a97b69)

7. Bảng LopSV(#@maLop,#@maSV,ChucVu)
![image](https://github.com/user-attachments/assets/2305addb-59a1-4425-87f4-5f2ccd1ea2a4)

8. Bảng MonHoc(#mamon,Tenmon,STC)
![image](https://github.com/user-attachments/assets/29dfeab4-8f98-47cf-a6e6-6f625dceb786)

9. Bảng LopHP(#maLopHP,TenLopHP,HK,@maMon,@maGV)
![Screenshot (375)](https://github.com/user-attachments/assets/64fd27cb-2236-401d-b803-247519465b1a)

11. Bảng DKMH(#@maLopHP,#@maSV,DiemTP,DiemThi,PhanTramThi)
![image](https://github.com/user-attachments/assets/fac7747f-d882-455d-8902-292b1ab94619)

**Tạo ràng buộc kiểm tra**
- Để tạo ràng buộc kiểm tra cho các thuộc tính trong bảng ta làm như hình sau:
![Screenshot (350)](https://github.com/user-attachments/assets/cf4b0b58-4adb-4824-91c4-2aef605de2d2)

- Tại giao diện tiếp theo, ta làm các bước sau:
![Screenshot (351)](https://github.com/user-attachments/assets/3ad3eb4a-c99a-42fd-bb7a-f2bcc39edcf9)

- Sau khi hoàn thành, ta quay lại table và kiểm tra ràng buộc.
![Screenshot (352)](https://github.com/user-attachments/assets/2e27825a-03e2-486f-b1d6-a4ea336a60c7)

+ Dựa vào ràng buộc như trên ta sẽ kiểm tra tại cột hoten.
![Screenshot (353)](https://github.com/user-attachments/assets/6a892399-be6d-4704-bfa0-f44b4d3d0e3f)

+ Sau khi thay đổi
![image](https://github.com/user-attachments/assets/82e26b06-f9eb-475e-ade3-291610decab5)

**Những bảng khác ta làm tương tự*
- Bảng Lop(#maLop,tenLop)
![Screenshot (363)](https://github.com/user-attachments/assets/8cc74fcb-d709-4b63-99bb-8a6ca9707778)

- Bảng GVCN(#@maLop,#@magv,#HK)
![Screenshot (369)](https://github.com/user-attachments/assets/49c47a14-d195-452e-8911-3c977101d7b2)

- Bảng LopSV(#@maLop,#@maSV,ChucVu)
![Screenshot (364)](https://github.com/user-attachments/assets/91ac07bf-9794-4e03-a846-27d347083435)

- Bảng GiaoVien(#magv,hoten,NgaySinh,@maBM)
![Screenshot (365)](https://github.com/user-attachments/assets/9a27912c-35e9-4030-ab0e-32b4a06a803e)

- Bảng BoMon(#MaBM,tenBM,@maKhoa)
![Screenshot (366)](https://github.com/user-attachments/assets/33847da9-c3a0-478c-ad86-91ff2862c5b2)

- Bảng Khoa(#maKhoa,tenKhoa)
![Screenshot (367)](https://github.com/user-attachments/assets/06d952b5-8a25-48d0-94fb-0bff00e987a7)

- Bảng MonHoc(#mamon,Tenmon,STC)
![Screenshot (368)](https://github.com/user-attachments/assets/c1c826ed-0836-435a-9d4c-3cef5b261c54)

- Bảng LopHP(#maLopHP,TenLopHP,HK,@maMon,@maGV)
![Screenshot (371)](https://github.com/user-attachments/assets/02db1948-37dc-4083-8a4f-6e95dd4115d0)

- Bảng DKMH(#@maLopHP,#@maSV,DiemTP,DiemThi,PhanTramThi)
![Screenshot (373)](https://github.com/user-attachments/assets/a1512a42-05c2-4286-af7a-65314c9a8c47)
