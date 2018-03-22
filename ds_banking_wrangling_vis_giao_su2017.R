

# Đọc dữ liệu: 
library(readxl)
gs <- read_excel("D:/Teaching/data_science_banking/data_vis_wrangling/giao_su/KETQUA_GS_PGS_dat_nam_2017_WEB.xls", sheet = 1)
pgs <- read_excel("D:/Teaching/data_science_banking/data_vis_wrangling/giao_su/KETQUA_GS_PGS_dat_nam_2017_WEB.xls", sheet = 2)

# Xem qua: 
library(tidyverse)
library(magrittr)

gs %>% names()
pgs %>% names()
gs %>% head()

# Bỏ đi các dòng không cần thiết: 
gs %<>% slice(-c(1:5))
pgs %<>% slice(-c(1:5))

# Đổi tên cho cột biến: 
ten_moi <- c("tt", "ho", "ten", "ngay_sinh", "gioi_tinh", "nganh", "to_chuc", "noi_sinh")

# Đôi tên cho các df: 
names(gs) <- ten_moi
names(pgs) <- ten_moi

# Hợp nhất các dữ liệu: 
all_df <- bind_rows(gs %>% mutate(chuc_danh = "GS"), 
                    pgs %>% mutate(chuc_danh = "PGS"))

all_df %>% head()


# Các câu hỏi cần giải quyết: 

# - Ngành nào có nhiều PGS + GS nhất? 
# - 10 ngành có tỉ lệ GS / PGS Cao nhất? 
# - 10 ngành có tỉ lệ GS + PGS là nữ cao nhất? 
# - 20 trường đại học nào có nhiều PGS + GS nhất được phong? 
# - Người có độ tuổi trẻ nhất tính theo ngày đến thời điểm hiện tại (22/03/2018) là ai? 
# - 10 tỉnh sinh ra nhiều GS + PGS nhất? 
# - 5 họ có nhiều PG + PGS (chưa làm nhưng họ Nguyễn chắc chắn phải có trong danh sách)? 
# - Có bao nhiêu  GS + PGS đến từ khối đại học - viện nghiên cứu? 
# - Hình ảnh hóa mật độ giáo sư theo nơi sinh - quê quán của họ. 





