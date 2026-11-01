@echo off
echo Запуск проверки и генерации файлов...

REM Путь к KiCad
set KICAD="C:\Program Files\KiCad\10.0\bin\kicad-cli.exe"

REM Генерация PDF схемы
%KICAD% sch export pdf -o output\schematic.pdf howland-current-source.kicad_sch

REM Генерация BOM
%KICAD% sch export bom -o output\bom.csv howland-current-source.kicad_sch

REM Генерация Gerber
%KICAD% pcb export gerbers -o output\gerbers\ howland-current-source.kicad_pcb

REM DRC
%KICAD% pcb drc -o output\drc_report.txt howland-current-source.kicad_pcb

echo Готово! Файлы в папке output\
pause