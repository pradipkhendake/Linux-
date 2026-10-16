print("1. Right-Angled Triangle:")
n = 3
for i in range(1, n + 1):
    print('*' * i)

print("\n2. Pyramid Pattern:")
n = 3
for i in range(1, n + 1):
    print(" " * (n - i) + "* " * i)

print("\n3. Inverted Right-Angled Triangle:")
n = 3
for i in range(n, 0, -1):
    print("*" * i)
