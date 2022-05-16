#! /bin/bash
clear
printf "\e[1;31m                          Start Game\e[0m"
echo

echo -e "\E[1;33m::::::::::::::::::: \e[97m   Arrow To The Face  \E[1;33m::::::::::::::::::::"
echo -e "\e[97m                      ______
                   .-        -.
                  /            \
       \e[94m* \e[97m                                   \e[90m* \e[97m
                 |,  .-.  .-.  ,|        \e[32m* \e[97m
                 | )(_ /  \_ )( |
  \e[33m* \e[97m             |/     /\     \|
       (@_       <__    ^^    __>         \e[95m* \e[97m
  _     ) \_______\__|IIIIII|__/____________\e[31m___________ \e[97m
 (_)\e[31m@8@8\e[97m{}<________\e[31m_____\e[97m_____________\e[31m___________________> \e[97m
        )_/         \ IIIIII /                    \e[31m::::: \e[97m
       (@            --------                        \e[31m:: \e[97m
        "

echo "
Travelling is dangerous. Without skill you will not survive walking to the next village.
Hit Enter"
read
clear
echo "Your current skill level is:

Health = 1 (immune system of a baby)
Attack = -1 (more likely to hurt yourself)
Defense = 0 (is fetal position a defense?)"
read
clear
echo "I'm surprised you managed to stay alive this long..."
read
clear
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
clear

echo "Your years of hard work and discipline as a $type have paid off. Your skill has increased:  

Your health = $health
Your attack = $attack 
Your defense = $defense"
read
clear
#First beast battle

beast=$(( $RANDOM % 2  ))
echo "Day 1. Just outside the city walls. Your first beast approaches."
echo "                        MMOOOO!
                           \   ^__^ 
                            \  (oo)\_______
                               (__)\       )\/\\
                                   ||----w |
                                   ||     ||
"								   
echo "Prepare to battle. Do you attack first and rush the beast (0)? or do you look for it's weakness and counter-attack (1)?"
read destroyed
if [[ $beast == $destroyed ]]; then
	clear
	echo "Contrats fellow traveller!! You have vanquished the beast and have survived the first few minutes outside the wall."
	read
else
	echo "You have been mauled and eaten by a beast."
	read
	R='\033[1;31m'
G='\033[1;32m'
Y='\033[1;33m'
B='\033[1;34m'
M='\033[1;35m'
C='\033[1;36m'
W='\033[1;37m'
Green='\033[32m'
Gren='\033[32m'
Gris='\033[90m'

printf "$Gris"
echo $(clear)
echo -e $W"_____________________________________________________________________"
echo -e "          $W      $Gris          _,.---,---.,_"
echo -e "           $W    $Gris       ,;~'             '~;,"
echo -e "          $W    $Gris      ,;                     ;,"
echo -e $R"          $W    $Gris     ;                      $Gris  ;$W ,--$R Should have called an Uber"
echo -e $R"        $W     $Gris     ,'                  $W      /'"
echo -e $W"             $Gris    ,;                   $W    /'$Gris ;,"
echo -e $W"             $Gris    ; ;      .          .$W <-'$Gris  ; |"
echo -e $W"                $Gris | ;   ______       ______   ;$W<--------------------((($R "
echo -e $W"               $Gris  |  '/~"     ~" . "~     "~\'  |"
echo -e $W"                $Gris |  ~  ,-~~~^~, | ,~^~~~-,  ~  |"
echo -e $R"         $W   $Gris      |   |        }:{        |$W <---------------------((($R "
echo -e $R"         $W   $Gris      |   l       / | \       !   |"
echo -e $R"         $W   $Gris      .~  (__,.--" .^. "--.,__)  ~."
echo -e $R"         $W   $Gris      |    ----;' / | \  ;$W-<---------------------((($R "
echo -e $W"              $Gris     \__.       \/^\/       .__"
echo -e $W"                 $Gris   V| \                 / |V$W <--------------------((($R "
echo -e $W"                $Gris     | |T~\___!___!___/~T| |"
echo -e $W"               $Gris      | | IIII_I_I_I_IIII | |"
echo -e $R"             $W  $Gris      |  \ III I I I III,/  |"
echo -e $W"               $Gris       \    ~~~~~~~~~~     "
echo -e $W"               $Gris         \   .       .$W <--------------------((($R "
echo -e $W"                   $Gris       \.    ^    ."
echo "                            ^~~~^~~~^"
echo -e $W"  _________________________________________________________________"
echo -e $G"                           Game Over"
echo

	exit 1
fi
clear
#2nd battle

wizard=$(( $RANDOM % 3 ))
echo "Night has come. You can hear a noise behind the trees. A wizard approaches."  
read 
clear
bash wizard.sh 
read 
echo "Prepare to battle. Do you grab your sword(0)? Your axe(1)? or your throwing darts(2)? Pick a number between 0-2. (0-2)"
read slaughtered 
if [[ $wizard == $slaughtered || $pray == $slaughtered ]]; then
	echo "Wizard destroyed!! The people in the nearest village saw the epic battle rage! $1 has become a LEGEND!"
	read
	bash viking.sh 
	read 
else 
echo "You died, how embarassing!"
read
		R='\033[1;31m'
G='\033[1;32m'
Y='\033[1;33m'
B='\033[1;34m'
M='\033[1;35m'
C='\033[1;36m'
W='\033[1;37m'
Green='\033[32m'
Gren='\033[32m'
Gris='\033[90m'

printf "$Gris"
echo $(clear)
echo -e $W"_____________________________________________________________________"
echo -e "          $W      $Gris          _,.---,---.,_"
echo -e "           $W    $Gris       ,;~'             '~;,"
echo -e "          $W    $Gris      ,;                     ;,"
echo -e $R"          $W    $Gris     ;                      $Gris  ;$W ,--$R Should have called an Uber"
echo -e $R"        $W     $Gris     ,'                  $W      /'"
echo -e $W"             $Gris    ,;                   $W    /'$Gris ;,"
echo -e $W"             $Gris    ; ;      .          .$W <-'$Gris  ; |"
echo -e $W"                $Gris | ;   ______       ______   ;$W<---------------------((($R "
echo -e $W"               $Gris  |  '/~"     ~" . "~     "~\'  |"
echo -e $W"                $Gris |  ~  ,-~~~^~, | ,~^~~~-,  ~  |"
echo -e $R"         $W   $Gris      |   |        }:{        |$W <--------------------((($R "
echo -e $R"         $W   $Gris      |   l       / | \       !   |"
echo -e $R"         $W   $Gris      .~  (__,.--" .^. "--.,__)  ~."
echo -e $R"         $W   $Gris      |    ----;' / | \  ;$W-<--------------------((($R "
echo -e $W"              $Gris     \__.       \/^\/       .__"
echo -e $W"                 $Gris   V| \                 / |V$W <--------------------((($R "
echo -e $W"                $Gris     | |T~\___!___!___/~T| |"
echo -e $W"               $Gris      | | IIII_I_I_I_IIII | |"
echo -e $R"             $W  $Gris      |  \ III I I I III,/  |"
echo -e $W"               $Gris       \    ~~~~~~~~~~     "
echo -e $W"               $Gris         \   .       .$W <--------------------((($R "
echo -e $W"                   $Gris       \.    ^    ."
echo "                            ^~~~^~~~^"
echo -e $W"  _________________________________________________________________"
echo -e $G"                           Game Over"
echo
	fi
