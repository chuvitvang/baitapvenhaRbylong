# MSSV : 23166049 Đỗ Huỳnh Duy Long
# MSSV : 23166054 Nguyễn Nhật Minh
# MSSV : 23166096 Lê Thanh Tài
library(ggplot2)
library(dplyr)

# Tạo biểu đồ hộp
ggplot(ToothGrowth, 
       aes(x = factor(dose), y = len)
) +
  geom_boxplot() +
  stat_summary(fun = mean, 
               geom = "point", shape = 18, size = 4, color = "blue") + # Tính trung bình
  facet_wrap(~ supp) + # Tách 2 bảng so sánh
  scale_y_continuous(breaks = seq(5, 35, by = 5)) + # Chia trục y cách nhau 5 đơn vị
  labs(x = "DOSE", y = "Len") + # Tiêu đề cho chiều dài răng và liều lượng vitamin C
  theme_bw() +
  theme(
    strip.text = element_text(face = "bold", size = 10), # Tùy chỉnh nhãn facet
    panel.grid = element_blank() # Xóa toàn bộ lưới nền
  )



#Phân tích biểu đồ so sánh sư phát triển răng của lợn Guinea của 2 vitamin C khác nhau OJ(nước cam) và VC(vitamin tổng hợp)
# Phân loại:
  # + Biểu đồ chia thành 2 panel để so sánh : OJ và VC
#Trục X:
  # + Trục X biểu diễn liều lượng vitamin C : 0.5, 1 và 2 mg 
  # + Mỗi hộp trên trục X là chiều dài răng ở mức vitamin nhất định cho từng loại bổ sung
#Trục Y:
  # + Trục Y biểu diễn chiều dài răng của lọn Guinea, với giá trị từ khoảng 5 đến 35 mm
  # + Chiều dài răng càng lớn biểu thị phát triển răng tốt hơn
#Hộp, trung bình và trung vị:
  # + Mỗi hộp trong biểu đồ thể hiện phạm vi của các giá trị chiều dài răng cho một mức liều lượng cụ thể
  # + Phần giữa hộp biểu diễn khoảng tứ phân vị (IQR), tức là 50% dữ liệu nằm trong khoảng từ Q1 (phân vị thứ nhất) đến Q3 (phân vị thứ ba)
  # + Đường giữa hộp biểu thị trung vị của chiều dài răng
  # + Hai đường râu mở rộng từ Q1 đến giá trị nhỏ nhất và từ Q3 đến giá trị lớn nhất, nhưng chỉ trong phạm vi 1.5 lần IQR. 
  # + Các điểm nằm ngoài phạm vi này được coi là giá trị ngoại lai (outliers)
  # + Các điểm hình thoi màu xanh biểu diễn giá trị trung bình của chiều dài răng tại mỗi liều lượng
#So sánh OJ và VC
  # + Ở tất cả các mức liều lượng (0.5, 1, và 2 mg), nhóm sử dụng OJ (nước cam) có chiều dài răng trung bình cao hơn so với nhóm sử dụng VC
  # + Điều này gợi ý rằng OJ có thể có hiệu quả tốt hơn VC trong việc thúc đẩy sự phát triển của răng ở lợn Guinea khi so sánh ở cùng liều lượng
#Ảnh hưởng của liều lượng:
  # + Cả hai loại bổ sung đều cho thấy xu hướng tăng chiều dài răng khi tăng liều lượng từ 0.5 đến 2 mg
  # + Đặc biệt, ở liều lượng 2 mg, chiều dài răng đạt mức cao nhất ở cả hai nhóm, điều này cho thấy liều lượng cao hơn có khả năng thúc đẩy tăng trưởng mạnh hơn
#Phân tán dữ liệu:  
  # + Nhóm OJ có sự phân tán (khoảng cách từ giá trị nhỏ nhất đến giá trị lớn nhất) lớn hơn ở mức liều lượng thấp (0.5 mg) so với mức liều lượng cao (2 mg)
  # + Đối với nhóm VC, sự phân tán ở liều lượng thấp cũng lớn, với một số giá trị ngoại lai
#Tổng quan:
  # + Biểu đồ cho thấy OJ có vẻ hiệu quả hơn VC trong việc thúc đẩy sự phát triển răng của lợn Guinea ở các liều lượng khác nhau
  # + Liều lượng của vitamin C có ảnh hưởng rõ rệt đến sự phát triển răng, với liều lượng cao hơn (2 mg) đạt được chiều dài răng lớn hơn
  # + Sự khác biệt về hiệu quả giữa OJ và VC ở các liều lượng khác nhau gợi ý rằng nguồn cung cấp vitamin C (tự nhiên từ nước cam hoặc tổng hợp) có thể có tác động khác nhau đến sự phát triển của răng