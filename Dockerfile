FROM aglover/java8-pier
VOLUME ["/tmp"]
ADD webtime-1.0.jar app.jar
ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "app.jar"]
EXPOSE 8999

# 设置容器中文环境变量
ENV LANG C.UTF-8

# 设置容器中国时区环境变量
ENV TZ=Asia/Shanghai

# 添加进镜像系统
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone