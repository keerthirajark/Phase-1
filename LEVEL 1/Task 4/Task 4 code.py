user_dict = {}

for i in range(3):
    key = input(f"Enter key {i+1}: ") 
    value = int(input(f"Enter value for {key}: ")) 
    user_dict[key] = value


print(user_dict)
