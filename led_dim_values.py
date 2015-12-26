import math

max_values = 200.
base = 10
logs = [int(round((base**(n/max_values) - 1)/(base - 1)*max_values)) for n in range(int(max_values))]

print(logs)