@echo off
echo 正在同步笔记到GitHub...
git add .
git commit -m "更新笔记: %date% %time%"
git push
echo 同步完成！
pause