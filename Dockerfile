# Nginxのイメージをベースとして使用
FROM nginx:alpine

# Reactアプリケーションのビルドされた静的ファイルをコピー
COPY /build/ /usr/share/nginx/html

# Nginxのデフォルト設定を使用
EXPOSE 80

# Nginxをフォアグラウンドで実行
CMD ["nginx", "-g", "daemon off;"]

