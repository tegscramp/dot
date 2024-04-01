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
COPY public/*.* ./public/
COPY prometheus.yml /etc/prometheus/prometheus.yml

# Откройте порт, на котором будет работать ваше приложение
EXPOSE 8080

# Запустите приложение и Prometheus
CMD ["node", "app.js"]