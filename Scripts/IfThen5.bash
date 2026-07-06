If the output is either Monday or Tuesday
if [[ "$a" == "Monday" || "$a" == "Tuesday" ]]; then
    echo "It's Monday or Tuesday"
fi

#Test if the error.txt file exist and its size is greater than zero
if [ -s error.txt ]; then
    echo "error.txt exists and is not empty"
fi


if [ $? -eq 0 ]				If input is equal to zero (0)
if [ -e /export/home/filename ]	If file is there
if [ "$a" != "" ]				If variable does not match
if [ error_code != "0" ]		If file not equal to zero (0)

