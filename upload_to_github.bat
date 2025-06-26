@echo off
title Загрузка на GitHub
echo.
echo ========================================
echo    Загрузка WinLocker на GitHub
echo ========================================
echo.

REM Проверка наличия Git
git --version >nul 2>&1
if errorlevel 1 (
    echo ❌ Git не установлен!
    echo.
    echo 📥 Установите Git с сайта: https://git-scm.com/
    echo    Или используйте GitHub Desktop: https://desktop.github.com/
    echo.
    pause
    exit /b 1
)

echo ✅ Git найден!
echo.

REM Инициализация Git
echo 🔄 Инициализация Git...
git init

REM Добавление файлов
echo 📁 Добавление файлов...
git add .

REM Первый коммит
echo 💾 Создание коммита...
git commit -m "Первый коммит: WinLocker - Система блокировки Windows"

REM Переименование ветки
echo 🌿 Настройка ветки...
git branch -M main

echo.
echo ========================================
echo    СЛЕДУЮЩИЕ ШАГИ:
echo ========================================
echo.
echo 1️⃣ Создайте репозиторий на GitHub:
echo    - Зайдите на https://github.com/marsianin206
echo    - Нажмите "New repository"
echo    - Назовите: winlocker
echo    - НЕ добавляйте README, .gitignore, лицензию
echo.
echo 2️⃣ Скопируйте команды ниже и выполните их:
echo.
echo git remote add origin https://github.com/marsianin206/winlocker.git
echo git push -u origin main
echo.
echo 3️⃣ Готово! Ваш проект будет на:
echo    https://github.com/marsianin206/winlocker
echo.
pause 