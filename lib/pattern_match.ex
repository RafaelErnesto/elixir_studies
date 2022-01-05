#destructuring
{a, b, c} = {:ok, "banana", 1}

IO.puts a
IO.puts b
IO.puts c

#throws an error if

# {a, b } = {:ok, "banana", 1} # different numbers of data

#[a, b, c] = {:ok, "banana", 1} # different types, in this case in the left side we have a list and in the right a tuple

# matching for specific values

{:apple, d, e} = {:apple, 1, "Hi"} # ok

#{:apple, d, e} = {:peach, 1, "Hi"} # error

#lists supports matching with its own head and tail, like this:

[head | tail] = [1 ,2 ,3 ,4]

IO.puts head #1
IO.puts tail # the rest of the list

#matching an empty list with head and tail will throw an error

# [head | tail] = [] # error

#we can also prepend an item to a list using head and tail matching

head = 5
tail = [ 3, 9 ]

#list = [head | tail] will return [5, 3, 9]

#The pin operator:
#variables in elixir can be rebounded, which means that their values can be reasigned, to prevent it we can use the pin operator

unchangeable = "Hey"

#^unchangeable = "hello" #the pin operator prevents the rematching so it will throw an error

#a variable can only have one value at the same time, so if you try this:
 {x, x} = {1, 1} # its ok, x is 1
 #{x, x} = {1, 2} # it throwns an error because x can't be 1 and 2
