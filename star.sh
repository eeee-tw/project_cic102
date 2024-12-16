#!/etc/bash

read -p "請輸入你的名字:" varN

echo "閃耀魔眼出現了！"
echo "快使用星爆氣流斬！"

read -p "(請輸入你的閃耀魔眼有多少HP):" varHP
v0="0"
varS=""
varMHP=$varHP

function HPlest ()
{
echo "閃耀魔眼的血量$varHP/$varMHP"
echo ""
}

while [ $varHP -gt $v0 ]
do
	echo "$varN使用了星爆氣流斬！"
	let varD=$((RANDOM % 100))
	let varHP=$varHP-$varD
	echo "造成了$varD點傷害！"
	echo "閃耀魔眼剩下$varHP滴血！"
	let varS=$varS+1
	echo ""
	if [ $varS -eq 5 ]
	then
		echo "那、那是什麼招式啊"
		echo ""
	fi
	if [ $varS -eq 10 ]
	then
		echo "還、還要更快"
		sleep 3
		break
	fi
	sleep 1
done

while [ $varHP -gt $v0 ]
do
	let varD=$((RANDOM % 100 + 100))
	echo "造成$varD傷害"
	let varHP=$varHP-$varD
	let varS=$varS+1
	HPlest
	sleep 0.3
	
	if [ $varS -eq 30 ]
	then
		echo "還不夠，還要更快"
		sleep 2
		break
	fi
done

while [ $varHP -gt $v0 ]
do
	let varD=$((RANDOM % 200 + 200))
	echo "高速的殘影造成了$varD傷害"
	let varHP=$varHP-$varD
	let varS=$varS+1
	HPlest
	sleep 0.1
done

echo "$varN用了$varS刀解決了閃耀魔眼"

exit 0
