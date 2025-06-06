FROM node:20-alpine AS build
WORKDIR /app

COPY package.json package-lock.json ./

RUN npm install
COPY . .
RUN npm run build -- --configuration=production

FROM nginx:alpine

RUN rm -rf /etc/nginx/conf.d/*

COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY --from=build /app/dist/kanban/browser /usr/share/nginx/html

CMD ["nginx", "-g", "daemon off;"]