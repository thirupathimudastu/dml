


import pandas as pd

n=int(input("enter positive number:"))
p=int(input("enter positive number:"))

data=''
for i in range(a):
    
    i=input('enter dict_as string:')
    data+=i+" "
data=data.split(' ')

keys=[]
values=[]
    
for item in data:
    keys.append(item[0:2])
    values.append(item[3:])

df = pd.DataFrame(list(zip(keys, values)),
               columns =['Name', 'val'])
df1=df.drop_duplicates('Name',keep='last')


P1:a P3:b P5:x
P1:b P2:q P5:x 
P1:x P2:y P5:z 
































# Let's add key:value to a dictionary, the functional way

# Create your dictionary class
class my_dictionary(dict):

	# __init__ function
	def __init__(self):
		self = dict()
		
	# Function to add key:value
	def add(self, key, value):
		self[key] = value

# Main Function
dict_obj = my_dictionary()


# Taking input key = 1, value = Geek
dict_obj.key = input("Enter the key: ")
dict_obj.value = input("Enter the value: ")

dict_obj.add(dict_obj.key, dict_obj.value)
dict_obj.add(2, 'forGeeks')

print(dict_obj)
