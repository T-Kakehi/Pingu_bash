#!/bin/bash

B(){
	echo -e "\e[30m#\e[m"
}
R(){
	echo -e "\e[31m#\e[m"
}
Y(){
	echo -e "\e[33m#\e[m"
}
W(){
	echo -e "\e[37m#\e[m"
}

PINGU[0]="...        .     ...   ..    ..     .........            "
PINGU[1]="...     ....          ..  ..      ... .....  .. ..       "
PINGU[2]=" ...    .......      ...         ... . ..... `B``B``B``B``B``B``B`     "
PINGU[3]=".....  ........ .`B``B``B``B``B``B``B``B``B``B``B``B``B``B``B`.....  ... `B``B``B``B``B``B``B``B``B``B`.  ."
PINGU[4]=" .... ........`B``B``B``B``B``B``B``B``B``B``B``B``B``B``B``B``B``B``B``B``B`.  ... `B``B``B``B``B``B``B``B``B``B``B`    "
PINGU[5]="      ....... `B``B``W``W``W``W``B``B``B``B``B``B``B``B``B``B``B``B``B``B``B``B`.... `B``B``B``B``B``B``B``B``B``B``B``B`    "
PINGU[6]=".    .  .... `B``B``W``W``B``B``W``W``B``B``B``B``B``B``B``B``B``B``W``W``W``W``B``B`... `B``B``B``B``B``B``B``B``B``B``B`     "
PINGU[7]="   ..   ....`B``B``B``B``W``W``W``W``B``B``R``R``R``R``R``R``B``B``W``W``B``B``W``W``B`.. .`B``B``B``B``B``B``B``B``B``B``B`     "
PINGU[8]="    .       `B``B``B``B``B``B``B``B``R``R``R``R``R``R``R``R``R``R``B``W``W``W``W``B``B`.   .`B``B``B``B``B``B``B``B``B``B`     "
PINGU[9]="   ....     .`B``B``B``B``B``B``B``B``R``R``R``R``R``R``R``R``B``B``B``B``B``B``B``B`.      `B``B``B``B``B``B``B``B`     "
PINGU[10]="  .....      .  `B``B``B``B``B``B``B``B``B``B``B``B``B``B``B``B``B``B``B``B`.        `B``B``B``B``B``B``B`.    "
PINGU[11]="......     .. . `B``B``B``B``B``B``B``B``B``B``B``B``B``B``B``B``B``B` . .      .`B``B``B``B``B``B``B`     "
PINGU[12]="......       `B``B``B``B``B``B``B``B``B``B``B``B``B``B``B``B``B``B``B``B``B`  .      .`B``B``B``B``B``B``B`      "
PINGU[13]="......   .`B``B``B``B``B``B``B``B``B``B``B``B``B``B``B``B``B``B``Y``Y``W``W``B``B``B``B``B`  ..  `B``B``B``B``B``B``B`       "
PINGU[14]="...    . `B``B``B``B``B``B``B``B``B``B``B``B``B``B``B``B``Y``W``W``W``W``W``W``W``W``W``B``B``B``B``B``B``B``B``B``B``B``B``B``B`.       "
PINGU[15]="       `B``B``B``B``B``B``B``B``B``B``B``B``B``B``B``B``Y``W``W``W``W``W``W``W``W``W``W``W``W``W``B``B``B``B``B``B``B``B``B` .         "
PINGU[16]="      `B``B``B``B``B``B``B``B``B``B``B``B``B``B``B``Y``W``W``W``W``W``W``W``W``W``W``W``W``W``W``W``W``B``B`    .            "
PINGU[17]="     `B``B``B``B``B``B``B``B``B``B``B``B``B``B``B``Y``W``W``W``W``W``W``W``W``W``W``W``W``W``W``W``W``W``W``W`  ........       "
PINGU[18]="  .`B``B``B``B``B``B``B``B``B``B``B``B``B``B``B``B``Y``W``W``W``W``W``W``W``W``W``W``W``W``W``W``W``W``W``W``W``W`    .........    "
PINGU[19]=" .`B``B``B``B``B``B``B``B``B``B``B``B``B``B``B``B``Y``W``W``W``W``W``W``W``W``W``W``W``W``W``W``W``W``W``W``W``W``W``W`       .... . . "
#printf "Debug:\n%s\n"  "${PINGU[@]}"

COUNT=-1
ping $1 -c 20 | while read LINE; do
	if [ $COUNT -ge 0 ];then
		if [ $? -eq 0 ];then
			echo "${PINGU[$COUNT]}$LINE"
		fi
	else
		echo "$LINE"
	fi
	COUNT=`expr $COUNT + 1`
done