with open('names.txt', 'r') as file:
    names = file.readlines()
    for name in names:
        print(name.strip())
