FROM ubuntu:24.04

# Установка базовых инструментов сборки и отладки
RUN apt-get update && apt-get install -y \
    build-essential \
    cmake \
    gdbserver \
    git \
    openssh-server \
    && rm -rf /var/lib/apt/lists/*

# Установка Qt6 (пример для системных пакетов Ubuntu)
RUN apt-get update && apt-get install -y \
    qt6-base-dev \
    qt6-declarative-dev \
    && rm -rf /var/lib/apt/lists/*

# Создаем рабочую директорию
WORKDIR /workspace