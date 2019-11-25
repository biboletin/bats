REM път до registers_db
pushd D:\BK\xampp\mysql\data\chernoochene_17_01_2019
REM спиране на mysql
net stop mysql
REM поправяне на всички .MYI файлове
REM (тези файлове съдържат индексите на таблиците)
myisamchk -r -v -f *.MYI --sort-buffer_size=1G
net start mysql