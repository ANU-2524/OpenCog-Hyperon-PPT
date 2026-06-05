from hyperon import MeTTa
metta = MeTTa()

# Family tree
with open("Ex1-solution.metta", "r") as f:
    code = f.read()

metta.run(code)

print("Exercise 1 (data loaded)")

# Queries
with open("Ex2-solution.metta", "r") as f:
    ans = f.read()

result = metta.run(ans)

print("Results:")
print(result)