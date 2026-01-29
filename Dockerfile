FROM nginx:alpine

# Copy application files to nginx html directory
COPY visualisasi_mutasi.html /usr/share/nginx/html/index.html
COPY mutasi_anonim.csv /usr/share/nginx/html/
COPY hasil_join_kantor.csv /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
