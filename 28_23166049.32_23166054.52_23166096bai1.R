# MSSV : 23166049 Đỗ Huỳnh Duy Long
# MSSV : 23166054 Nguyễn Nhật Minh
# MSSV : 23166096 Lê Thanh Tài
library(ggplot2)

# Vẽ biểu đồ
ggplot(
  data = mpg, 
  mapping = aes(x = displ, y = hwy, color = drv)
) +
  geom_point() + # các điểm dữ liệu
  geom_smooth(method = "loess", se = FALSE, color = "blue") + # đường cong màu xanh
  theme_bw() +
  theme(
    panel.grid = element_blank() # Xóa toàn bộ lưới nền
  )



#Phân tích biểu đồ biểu thi 3 mối quan hệ giữa dung tích động cơ và quãng đường cao tốc trên mỗi gallon của phương tiện, với các điểm dữ liệu của loại hệ dẫn động

#Quan hệ giữa displ và hwy 
  # + Trục hoành (displ) đại diện cho dung tích của động cơ, tính bằng lít
  # + Trục tung (hwy) biểu thị số dặm trung bình trên mỗi gallon nhiên liệu mà phương tiện đi được trên đường cao tốc
  # + Dựa vào đường hồi quy loess (màu xanh dương) tổng thể, có xu hướng giảm dần của hwy khi displ tăng lên, cho thấy rằng các phương tiện có động cơ lớn hơn thường có mức tiết kiệm nhiên liệu thấp hơn trên đường cao tốc
#Phân nhóm theo drv  
  # + Các điểm dữ liệu được tô màu dựa trên biến drv, đại diện cho kiểu dẫn động:
    # + 4: Dẫn động 4 bánh
    # + f: Dẫn động cầu trước
    # + r: Dẫn động cầu sau
  # + Mỗi loại dẫn động có xu hướng phân bố khác nhau theo dung tích động cơ và hiệu quả nhiên liệu
  # + Phương tiện dẫn động cầu trước (f) thường có dung tích động cơ nhỏ hơn và tiết kiệm nhiên liệu tốt hơn
  # + Phương tiện dẫn động cầu sau (r) có sự phân bố rộng hơn ở các dung tích động cơ lớn và có xu hướng tiêu hao nhiên liệu cao hơn
  # + Phương tiện dẫn động 4 bánh (4) tập trung ở mức dung tích trung bình và có mức tiết kiệm nhiên liệu thấp hơn so với các phương tiện dẫn động cầu trước
#Đường cong hồi quy loess
  # + Đường hồi quy cho thấy mối quan hệ phi tuyến giữa displ và hwy
  # + Khi dung tích động cơ tăng từ 2 đến 5 lít, mức tiết kiệm nhiên liệu giảm dần
  # + Từ khoảng 5 lít trở đi, mức tiết kiệm nhiên liệu dường như ổn định hơn, với ít sự thay đổi khi displ tiếp tục tăng
  
#Tổng kết
  #Biểu đồ cho thấy một mối quan hệ tiêu cực giữa dung tích động cơ và mức tiết kiệm nhiên liệu
  #Phương tiện có dung tích động cơ lớn hơn thường có xu hướng tiêu hao nhiên liệu cao hơn
  #Loại dẫn động cũng đóng vai trò quan trọng, với phương tiện dẫn động cầu trước có hiệu quả nhiên liệu cao hơn, trong khi phương tiện dẫn động cầu sau và 4 bánh có xu hướng tiêu thụ nhiên liệu cao hơn, đặc biệt ở các mức dung tích động cơ lớn hơn
