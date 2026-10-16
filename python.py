# Fibonacci Series[cite: 3]
n = int(input("Enter number of terms: "))
a, b = 0, 1
for _ in range(n):
    print(a, end=" ")
    a, b = b, a + b
print()

# Palindrome Check[cite: 3]
num = int(input("Enter a number: "))
original = num
reverse = 0
while num > 0:
    digit = num % 10
    reverse = reverse * 10 + digit
    num = num // 10
if original == reverse:
    print(f"{original} is a palindrome")
else:
    print(f"{original} is not a palindrome")

# Calculate Factorial[cite: 3]
num = int(input("Enter a number: "))
factorial = 1
for i in range(1, num + 1):
    factorial *= i
print(f"Factorial of {num} = {factorial}")

# Check Whether Number is Prime[cite: 3]
num = int(input("Enter a number: "))
if num < 2:
    print(f"{num} is not a prime number")
else:
    is_prime = True
    for i in range(2, num):
        if num % i == 0:
            is_prime = False
            break
    if is_prime:
        print(f"{num} is a prime number")
    else:
        print(f"{num} is not a prime number")

# Find Largest of Three Numbers[cite: 3]
num1 = float(input("Enter first number: "))
num2 = float(input("Enter second number: "))
num3 = float(input("Enter third number: "))
if num1 >= num2 and num1 >= num3:
    print(f"{num1} is largest")
elif num2 >= num1 and num2 >= num3:
    print(f"{num2} is largest")
else:
    print(f"{num3} is largest")

# Check Whether Year is a Leap Year[cite: 3]
year = int(input("Enter year: "))
if year % 400 == 0:
    print(f"{year} is a leap year")
elif year % 100 == 0:
    print(f"{year} is not a leap year")
elif year % 4 == 0:
    print(f"{year} is a leap year")
else:
    print(f"{year} is not a leap year")

# Calculate Simple Interest[cite: 3]
p = float(input("Enter Principal Amount: "))
r = float(input("Enter Rate: "))
t = float(input("Enter Time: "))
si = (p * r * t) / 100
print(f"Simple Interest = {si}")

# Check Number Between 1 and 100[cite: 3]
num = int(input("Enter a number: "))
if 1 <= num <= 100:
    print("Number is between 1 and 100")
else:
    print("Number is not between 1 and 100")

# Display Grade Based on Marks[cite: 3]
marathi = float(input("Enter Marathi marks: "))
hindi = float(input("Enter Hindi marks: "))
english = float(input("Enter English marks: "))
maths = float(input("Enter Maths marks: "))
drawing = float(input("Enter Drawing marks: "))
total = marathi + hindi + english + maths + drawing
percentage = total / 5
print(f"Total Marks = {total}")
print(f"Percentage = {percentage}%")
if percentage >= 90:
    print("Grade A")
elif percentage >= 75:
    print("Grade B")
elif percentage >= 60:
    print("Grade C")
elif percentage >= 40:
    print("Grade D")
else:
    print("Fail")

# Check Number Divisible by Both 3 and 5[cite: 3]
num = int(input("Enter a number: "))
if num % 3 == 0 and num % 5 == 0:
    print(f"{num} is divisible by both 3 and 5")
else:
    print(f"{num} is not divisible by both 3 and 5")

# Check Whether Character is a Vowel[cite: 3]
ch = input("Enter a character: ")
if ch in "aeiouAEIOU":
    print(f"{ch} is a vowel")
else:
    print(f"{ch} is not a vowel")

# Menu-Driven Calculator / Arithmetic[cite: 3]
num1 = float(input("Enter first number: "))
num2 = float(input("Enter second number: "))
print("----- MENU -----")
print("1. Addition")
print("2. Subtraction")
print("3. Multiplication")
print("4. Division")
choice = int(input("Enter your choice: "))
if choice == 1:
    print(f"Addition = {num1 + num2}")
elif choice == 2:
    print(f"Subtraction = {num1 - num2}")
elif choice == 3:
    print(f"Multiplication = {num1 * num2}")
elif choice == 4:
    if num2 == 0:
        print("Error: Division by zero is not allowed")
    else:
        print(f"Division = {num1 / num2}")
else:
    print("Invalid choice")

# Accept N Numbers and Print Average[cite: 2]
n = int(input("Enter how many numbers: "))
total_sum = 0
for i in range(1, n + 1):
    num = float(input(f"Enter number {i}: "))
    total_sum += num
average = total_sum / n
print(f"Sum = {total_sum}")
print(f"Average = {average}")
