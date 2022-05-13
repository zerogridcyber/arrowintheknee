#! /bin/bash

echo "Travelling is dangerous. Without skill you will not survive walking to the next village."
sleep 2

echo "Your current skill level is:
Health=1
Attack=-1
Defense=0
I'm surprised you managed to stay alive this long."

sleep 2

echo "Before your adventures begin, commit yourself to training. Choose wisely:
1 - Knight
2 - Ninja
3 - Viking"

read class

case $class in

1)
	type="Knight"
	health=10
	attack=5
	defense=20
	;;

2)	type="Ninja"
	health=10
	attack=20
	defense=5
	;;

3)	type="Viking"
	health=10
	attack=10
	defense=10
	;;
esac

echo "Your discipline as a $type has paid off. Your skill has increased.  
Your health is $health
Your attack is $attack 
Your defense is $defense"


#First beast battle

beast=$(( $RANDOM % 2  ))
echo "Day 1. Just outside the city walls. Your first beast approaches.  Prepare to battle. Pick a number between 0-1. (0/1)"
read destroyed
if [[ $beast == $destroyed ]]; then
	echo "Beast VANQUISHED!! Contrats fellow traveller"
else
	echo "You Died"
	exit 1
fi

#2nd beast battle

witch=$(( $RANDOM % 3 ))
echo "Night has come. You can hear a noise behind the trees. The dreaded witch approaches.  Prepare to battle. Do you grab your sword(0)? Your axe(1)? or your throwing darts(2)? Pick a number between 0-2. (0-2)"
read slaughtered 
if [[ $witch == $slaughtered || $pray == $slaughtered ]]; then
	echo "witch destroyed!! Congrats traveller."
else 
	echo "You Died"
fi
