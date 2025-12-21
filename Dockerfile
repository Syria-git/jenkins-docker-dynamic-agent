FROM ubuntu:22.04

# تعريف المتغيرات كـ Arguments لتستخدم أثناء البناء فقط
ARG http_proxy=http://10.0.68.19:8080
ARG https_proxy=http://10.0.68.19:8080

# ضبط البيئة داخل الحاوية
ENV http_proxy=$http_proxy
ENV https_proxy=$https_proxy

RUN apt-get update && apt-get install -y \
    zip unzip curl git \
    && rm -rf /var/lib/apt/lists/*
