# Используйте официальный образ Node.js для сборки
FROM node:14

# Создайте директорию приложения
WORKDIR /usr/src/app

# Копируйте файлы package.json и package-lock.json
COPY package*.json ./

# Установите зависимости приложения
RUN npm install

# Копируйте исходный код приложения
COPY app.js ./
COPY /public/all.css ./public/

# Сделайте порт 8080 доступным для мира снаружи контейнера
EXPOSE 8080

# Запустите приложение
CMD [ "node", "app.js" ]
