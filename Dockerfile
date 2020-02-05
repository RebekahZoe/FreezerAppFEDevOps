FROM nginx
COPY . /FreezerAppFEDevOps
COPY nginx.conf /etc/nginx/nginx.conf
