# Use Node.js to build the React app
FROM node:18 AS build
WORKDIR /myapp
COPY package.json package-lock.json ./
RUN npm install
COPY . .
RUN npm run build

# Serve the app with Nginx
FROM nginx:alpine
COPY --from=build /myapp/build /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]

