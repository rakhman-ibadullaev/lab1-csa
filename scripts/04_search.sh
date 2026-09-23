#!/bin/bash -ex

cd "/workspaces/debian/lab0"
echo '4.1 Пять самых больших обычных файлов'
LC_ALL=C.UTF-8 ls -lR | LC_ALL=C.UTF-8 grep '^-' | LC_ALL=C.UTF-8 sort -k5,5nr | head -n 5
echo '4.2 Проверки и нарушения без повторной проверки'

LC_ALL=C.UTF-8 grep -rihE 'наруш|проверк' claude_monet | LC_ALL=C.UTF-8 grep -vi 'повторн' | LC_ALL=C.UTF-8 sort -r | head -n 6
echo '4.3 Число файлов со словом уборка'
LC_ALL=C.UTF-8 grep -il 'уборк' claude_monet/cleaning/* claude_monet/sanitation/cleaning_backup/* | wc -l
echo '4.4 Первые и последние строки подходящих файлов'
{
    head -q -n 1 claude_monet/kitchen/hot_station/*_report claude_monet/kitchen/hot_station/*_check claude_monet/kitchen/cold_room/*_check
    tail -q -n 1 claude_monet/kitchen/hot_station/*_report claude_monet/kitchen/hot_station/*_check claude_monet/kitchen/cold_room/*_check
} | LC_ALL=C.UTF-8 grep -iE 'провер|наруш' | sort
echo '4.5 Число слов в отфильтрованном отчёте'
LC_ALL=C.UTF-8 grep -v 'Баринов' claude_monet/kitchen/stations_report | LC_ALL=C.UTF-8 grep -E 'провер|рыб' | LC_ALL=C.UTF-8 sort -r | wc -w
echo '4.6 Обычные файлы с двумя жёсткими ссылками'
LC_ALL=C.UTF-8 ls -lR | LC_ALL=C.UTF-8 grep -E '^-[^[:space:]]+[[:space:]]+2[[:space:]]' | LC_ALL=C.UTF-8 sort -k9,9
echo '4.7 Первая символическая ссылка в обратном порядке имён'
LC_ALL=C.UTF-8 ls -lR | LC_ALL=C.UTF-8 grep '^l' | LC_ALL=C.UTF-8 sort -k9,9r | head -n 1
