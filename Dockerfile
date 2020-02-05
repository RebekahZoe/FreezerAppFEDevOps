FROM nginx
COPY . /opt/FreezerAppFEDevOps
COPY nginx.conf /etc/nginx/nginx.conf
