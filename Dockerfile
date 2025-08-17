FROM lipanski/docker-static-website:2.6.0

# 静态文件路径 /home/static
COPY . /home/static/

ENTRYPOINT ["/busybox-httpd", "-f", "-v"]
CMD [ "-p", "5135" ]

# 暴露端口
EXPOSE 5135

# docker build -t firfe/dds-1:2025.08.18 .

