echo "*** Welcome to the Guessing Game ***"

guess=0
count=$(ls|wc -l)

while [[ $guess -ne $count ]] 
do
	echo "How many files do you think are present in this directory? :"
#	echo $guess 
#	echo $count

	read guess

	if [[ $guess -eq $count ]]
	then
		echo "Congratualtions! You guessed it right! Goodbye!"
	else 
		echo "Try again." # $guess # $count

		if [[ $guess -gt $count ]]
		then
			echo "Your guess was too high."
		elif [[ $guess -lt $count ]]
		then
			echo "Your guess was too low."
		fi
	fi 
done

