#!/bin/bash

# Fibonacci Series[cite: 3]
echo "Enter number of terms:"
read n
a=0
b=1
for ((i=0; i<n; i++))
do
    echo -n "$a "
    next=$((a + b))
    a=$b
    b=$next
done
echo

# Palindrome Check[cite: 3]
echo "Enter a number:"
read num
original=$num
reverse=0
while [ $num -gt 0 ]
do
    digit=$((num % 10))
    reverse=$((reverse * 10 + digit))
    num=$((num / 10))
done
if [ $original -eq $reverse ]
then
    echo "$original is a palindrome"
else
    echo "$original is not a palindrome"
fi

# Calculate Factorial[cite: 3]
echo "Enter a number:"
read num
factorial=1
for ((i=1; i<=num; i++))
do
    factorial=$((factorial * i))
done
echo "Factorial of $num = $factorial"

# Check Whether Number is Prime[cite: 3]
echo "Enter a number:"
read num
if [ $num -lt 2 ]
then
    echo "$num is not a prime number"
    exit
fi
for ((i=2; i<num; i++))
do
    if [ $((num % i)) -eq 0 ]
    then
        echo "$num is not a prime number"
        exit
    fi
done
echo "$num is a prime number"

# Find Largest of Three Numbers[cite: 3]
echo "Enter first number:"
read num1
echo "Enter second number:"
read num2
echo "Enter third number:"
read num3
if [ $num1 -gt $num2 ] && [ $num1 -gt $num3 ]
then
    echo "$num1 is largest"
elif [ $num2 -gt $num1 ] && [ $num2 -gt $num3 ]
then
    echo "$num2 is largest"
else
    echo "$num3 is largest"
fi

# Check Whether Year is a Leap Year[cite: 3]
echo "Enter year:"
read year
if [ $((year % 400)) -eq 0 ]
then
    echo "$year is a leap year"
elif [ $((year % 100)) -eq 0 ]
then
    echo "$year is not a leap year"
elif [ $((year % 4)) -eq 0 ]
then
    echo "$year is a leap year"
else
    echo "$year is not a leap year"
fi

# Calculate Simple Interest[cite: 3]
echo "Enter Principal Amount:"
read p
echo "Enter Rate:"
read r
echo "Enter Time:"
read t
si=$((p * r * t / 100))
echo "Simple Interest = $si"

# Check Number Between 1 and 100[cite: 3]
echo "Enter a number:"
read num
if [ $num -ge 1 ] && [ $num -le 100 ]
then
    echo "Number is between 1 and 100"
else
    echo "Number is not between 1 and 100"
fi

# Display Grade Based on Marks[cite: 3]
echo "Enter Marathi marks:"
read marathi
echo "Enter Hindi marks:"
read hindi
echo "Enter English marks:"
read english
echo "Enter Maths marks:"
read maths
echo "Enter Drawing marks:"
read drawing
total=$((marathi + hindi + english + maths + drawing))
percentage=$((total / 5))
echo "Total Marks = $total"
echo "Percentage = $percentage%"
if [ $percentage -ge 90 ]
then
    echo "Grade A"
elif [ $percentage -ge 75 ]
then
    echo "Grade B"
elif [ $percentage -ge 60 ]
then
    echo "Grade C"
elif [ $percentage -ge 40 ]
then
    echo "Grade D"
else
    echo "Fail"
fi

# Check Number Divisible by Both 3 and 5[cite: 3]
echo "Enter a number:"
read num
if [ $((num % 3)) -eq 0 ] && [ $((num % 5)) -eq 0 ]
then
    echo "$num is divisible by both 3 and 5"
else
    echo "$num is not divisible by both 3 and 5"
fi

# Check Whether Character is a Vowel[cite: 3]
echo "Enter a character:"
read ch
if [[ "$ch" == "a" || "$ch" == "e" || "$ch" == "i" || "$ch" == "o" || "$ch" == "u" ||
      "$ch" == "A" || "$ch" == "E" || "$ch" == "I" || "$ch" == "O" || "$ch" == "U" ]]
then
    echo "$ch is a vowel"
else
    echo "$ch is not a vowel"
fi

# Menu-Driven Calculator / Arithmetic[cite: 3]
echo "Enter first number:"
read num1
echo "Enter second number:"
read num2
echo "----- MENU -----"
echo "1. Addition"
echo "2. Subtraction"
echo "3. Multiplication"
echo "4. Division"
echo "Enter your choice:"
read choice
case $choice in
    1)
        result=$((num1 + num2))
        echo "Addition = $result"
        ;;
    2)
        result=$((num1 - num2))
        echo "Subtraction = $result"
        ;;
    3)
        result=$((num1 * num2))
        echo "Multiplication = $result"
        ;;
    4)
        if [ $num2 -eq 0 ]
        then
            echo "Error: Division by zero is not allowed"
        else
            result=$((num1 / num2))
            echo "Division = $result"
        fi
        ;;
    *)
        echo "Invalid choice"
        ;;
esac

# Accept N Numbers and Print Average[cite: 2]
echo "Enter how many numbers:"
read n
sum=0
for ((i=1; i<=n; i++))
do
    echo "Enter number $i:"
    read num
    sum=$((sum + num))
done
average=$((sum / n))
echo "Sum = $sum"
echo "Average = $average"
