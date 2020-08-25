# ! /bin/bash

cars=('BMW' 'Mercedes' 'Toyota')

unset car[2]

cars[2] = 'Mercedes'

echo "${!cars[@]}"

echo "${#cars[@]}"


______________________________

function funcname() {

    echo $1 $2 $3 $4

}

funcname hi this is sanket

______________________________

mkdir -p Directory2

echo "Enter file name which you want to read"
read filename

touch $filename

if [ -d "$dir" ]
then
    echo "$dir exists"
else
    echo "$dir doesnt exists"
fi

if [ -f "$filename" ]
then
    echo "enter text which you want to append"
    read fileText
    echo "$fileText" >> $filename
else
    echo "$filename doesnt exists"
fi

if [ -f "$filename" ]
then
    while IFS= read -r line
    do
        echo "$line"
    done < $filename
else
    echo "$filename doesnt exists"
fi

if [ -f "$filename" ]
then
    rm $filename
    echo "file has been deleted successfully"
else
    echo "$filename doesnt exists"
fi

------------------------------

Sending email Via script
ssmtp sanketkankariya8820@gmail.com

-------------------------------------

CURL

url="https://images.pexels.com/photos/704977/pexels-photo-704977.jpeg"
curl -I ${url} >linux.txt

-------------------------------------

select car in  BMW Mercedes Tesla Rover Toyota
do
    # echo "$car"
    case $car in 
    BMW)
        echo "BMW Selected"
    Mercedes)
        echo "Mercedes Selected"
    *)
        echo "error"
    esac
done

---------------------------------------
echo "press any key"

while [ true ]
do
    read -t 3 -n 1
if [ $? = 0 ]
then
    echo "you have terminated the loop"
    exit;
else
    echo "Waiting"
fi
done

------------------------------------------------
GREP

echo "Enter file name in which you want to Search"
read filename

if [ -f $filename ]
then
    echo "Enter the word you want to Search in the file"
    read word
    grep -i -n $word $filename
    grep -i -c $word $filename
    grep -i -v $word $filename
else
    echo "File doesnt exists"
fi

------------------------------------------------

AWK

echo "Enter file name in which you want to Search"
read filename

if [ -f $filename ]
then
    # awk '{print}' $filename
    # awk '/Windows/ {print}' $filename
    awk '/Windows/ {print $4,$2}' $filename
else
    echo "File doesnt exists"
fi

--------------------------------------------

SED

echo "Enter file name in which you want to Search"
read filename

if [ -f $filename ]
then
    # sed 's/i/I/' $filename
    sed -i 's/i/I/g' $filename > newfile.txt
else
    echo "File doesnt exists"
fi