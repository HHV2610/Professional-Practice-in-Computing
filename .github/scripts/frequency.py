from collections import Counter

try:
    with open("data.txt", "r") as f:
        content = f.read().lower()
except FileNotFoundError:
    print("data.txt not found!")
    exit(1)

vowels = "aeiou"
counts = Counter(c for c in content if c in vowels)

for v in vowels:
    print(f"{v}: {counts[v]}")
