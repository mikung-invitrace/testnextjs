# ใช้ Node.js ภาพพื้นฐาน
FROM node:18

# ตั้งค่าตำแหน่งทำงานในคอนเทนเนอร์
WORKDIR /app

# คัดลอกไฟล์ package.json และ package-lock.json
COPY package*.json ./

# คัดลอกไฟล์โปรเจคทั้งหมดไปยังคอนเทนเนอร์
COPY . .

# ติดตั้ง dependencies
RUN npm install

# ทำการ build 
RUN npm run build

# เปิดพอร์ตที่แอปพลิเคชันใช้
EXPOSE 3000

# คำสั่งเริ่มต้นในการรันแอปพลิเคชัน
CMD ["npm", "start"]