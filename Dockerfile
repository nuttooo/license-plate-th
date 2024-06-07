# ใช้ base image เป็น python
FROM python:3.9-slim

# กำหนด working directory
WORKDIR /app

# คัดลอกไฟล์ requirements.txt ไปยัง working directory
COPY requirements.txt .

# ติดตั้ง dependencies
RUN pip install --no-cache-dir -r requirements.txt

# คัดลอกไฟล์โปรเจกต์ไปยัง working directory
COPY . .

# กำหนด entrypoint สำหรับรันไฟล์ train.py หรือสคริปต์อื่นๆ
CMD ["python", "train.py"]