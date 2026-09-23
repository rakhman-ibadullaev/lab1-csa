#!/bin/bash -ex

mkdir -p "/workspaces/debian/lab0"
cd "/workspaces/debian/lab0"
mkdir -p claude_monet/kitchen/hot_station
mkdir -p claude_monet/kitchen/cold_room
mkdir -p claude_monet/sanitation
mkdir -p claude_monet/cleaning
mkdir -p claude_monet/hall
mkdir -p claude_monet/office


cat > claude_monet/kitchen/hot_station/hot_report <<'TEXT'
Горячий цех подготовлен к проверке
Рабочие поверхности очищены
Баринов проверил порядок лично
TEXT

cat > claude_monet/kitchen/hot_station/senya_check <<'TEXT'
Сеня убрал лишние продукты
Ножи лежат на своих местах
Срок хранения мяса не нарушен
TEXT

cat > claude_monet/kitchen/cold_room/fridge_temperature <<'TEXT'
Утром температура четыре градуса
Днём температура пять градусов
Вечером температура четыре градуса
TEXT


cat > claude_monet/kitchen/cold_room/fish_check <<'TEXT'
Федя проверил сибаса и дорадо
Свежая рыба перенесена в холодильник
Нарушений хранения рыбы нет
TEXT

cat > claude_monet/sanitation/inspection_act <<'TEXT'
Проверка началась до открытия ресторана
Инспектор осмотрел кухню и зал
Повторная проверка назначена на пятницу
TEXT

cat > claude_monet/sanitation/violations <<'TEXT'
Нарушен порядок хранения одной коробки
Нарушена маркировка контейнера с соусом
График уборки висит не на своём месте
TEXT

cat > claude_monet/cleaning/cleaning_schedule <<'TEXT'
Уборка кухни проводится утром
Уборка зала проводится перед открытием
Вечером Лёва проверяет результат уборки
TEXT

cat > claude_monet/hall/waiter_note <<'TEXT'
Официанты убрали столы перед проверкой
Настя проверила гостевую зону
Запасные скатерти сложены в шкаф
TEXT

cat > claude_monet/office/vika_response <<'TEXT'
Вика получила акт инспектора
Замечания будут исправлены до вечера
Ответственным назначен Лёва
TEXT

cat > inspector_arrival <<'TEXT'
Инспектор приехал раньше назначенного времени
Баринов встретил проверку на кухне
Нагиев потребовал избежать штрафа
TEXT

ls -lR
