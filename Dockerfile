# 选择运行时基础镜像
FROM alibabadragonwell/dragonwell:8-anolis

# 维护人员
MAINTAINER 徐晓伟 xuxiaowei@xuxiaowei.com.cn

WORKDIR /usr/share/fonts/Windows-Fonts

ADD Windows-Fonts /usr/share/fonts/Windows-Fonts

RUN sed -i 's/TLSv1//g' /opt/java/openjdk/jre/lib/security/java.security \
    && ls /usr/share/fonts/Windows-Fonts

WORKDIR /
