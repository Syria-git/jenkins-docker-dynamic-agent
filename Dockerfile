FROM ubuntu:22.04

# إعدادات البروكسي للعمليات الداخلية مثل apt-get
ENV http_proxy http://10.0.68.19:8080
ENV https_proxy http://10.0.68.19:8080

# تحديث النظام وتثبيت الأدوات المطلوبة لمشروعك
RUN apt-get update && apt-get install -y \
    zip \
    unzip \
    curl \
    git \
    && rm -rf /var/lib/apt/lists/*

# تحديد مجلد العمل
WORKDIR /app
