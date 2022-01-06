greetings = "Hello"

is_binary(greetings) # returns true

is_binary(1) # returns false

#Unicode standard
#In elixir every unicode character is linked to a code point, and you an get a charater's codpoint by doing this:
?a # 97, in this case 97 is the code point of the character a.

#We can also use hexadecimal values since unicode refers to hexadecimal values, so in the previous example, the 97
# in hexadecimal is 0061, and we can use it in elixir adding a \u at the begining, like this \u0061
#"\u0061" === "a" returns true
# 0x0061 === 97 = ?a returns true

#Utf-8 enconding
#Enconding is an implementation, that deals with how we're going to save the code points into memory, disk etc, converting it into bytes.

# In elixir a string has double quotes and a charlist single quotes, charlist are made of valid code points, like the example below:
'hello' # if all the characters ar ASCII valid characters, it will print hello
'hełło' # otherwise when this doesn't have all valid ASCII, it will print a list of code points [104, 101, 322, 322, 111]
