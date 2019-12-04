#! /bin/bash
# cars.sh
# Jordan Odekirk
N=0
while [ $N -ne 3 ]
do
	echo "Type the number 1 to enter a new car."
	echo "Type the number 2 to display the list of cars"
	echo "Type the number 3 to quit and exit the program"
	read N
	case "$N" in
		"1") echo
			echo "What is the year of the car?"
			read year
			echo "What is the make of the car?"
			read make
			echo "What is the model of the car?"
			read model
			echo "$year:$make:$model" >> My_old_cars ;;
		"2") echo
			sort ~/cars/My_old_cars ;;
		"3") echo "Goodbye"
			break;;
	esac
done
