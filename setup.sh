#!/bin/bash

# Проверка, что скрипт запущен из корневой директории проекта
if [ ! -d "src" ]; then
    echo "Директория src не найдена. Пожалуйста, запустите скрипт из корневой директории проекта."
    exit 1
fi

# Переход в директорию src
cd src

# Создание миграций
echo "Создание миграций..."
python manage.py makemigrations

# Применение миграций
echo "Применение миграций..."
python manage.py migrate

# Создание суперпользователя
echo "Создание суперпользователя..."
python manage.py createsuperuser

echo "Все операции завершены."