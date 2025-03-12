# Sử dụng image Python 3.10 slim
FROM python:3.10-slim

# Cài đặt các thư viện cần thiết
RUN apt-get update && apt-get install -y git curl

# Tạo thư mục làm việc
WORKDIR /app

# Copy toàn bộ nội dung repo vào container
COPY . /app

# Chạy lệnh chính (thay 'app.py' bằng file chính của CogStudio)
CMD ["python3", "app.py"]

