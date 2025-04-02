#Mengambil base image dari node versi 14-alpine
FROM node:14-alpine
#Membuat direktori /app pada kontainer sebagai working directory
WORKDIR /app
#Menyalin seluruh source code yang ada pada direktori host machine saat ini, ke dalam working directory pada kontainer
COPY . .
#Menetapkan nilai dari environment variable untuk environment production, dan host dari database yang akan digunakan
ENV NODE_ENV=production DB_HOST=item-db
#Menjalankan perintah npm install untuk menginstall seluruh dependencies yang diperlukan oleh aplikasi
RUN npm install --production --unsafe-perm && npm run build
#Mengekspose port 8080 yang akan digunakan oleh aplikasi
EXPOSE 8080
#Menjalankan perintah npm start untuk menjalankan aplikasi
CMD ["npm", "start"]
