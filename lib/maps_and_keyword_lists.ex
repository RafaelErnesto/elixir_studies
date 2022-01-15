#An associative array is an array where you can use values different than integers as keys, in Eixir we have 2 associative arrays, Maps and Keyword Lists:

#both representations bellow are valid keyword lists
cities_size = [{:los_angeles, 4_000_000}]
cities_size =  [los_angeles: 4_000_000]

#all methods available to lists can be used with keyword lists, for example to add a new value to a keyword list
cities_size ++ [san_francisco: 875_000]

# to get the value of a keyword list we use brackets:
cities_size[:los_angeles]

#if there are duplicate keys, like [a: 1, a: 2], and you try to read list[a], the first value matched will be returned
#patter matching keyword lists is very restrictive, that is why its not so common to se patter matching with this kind of lists
#to match a keyword list the number of elements and the order must match:

#[a: 1, b: 2] = [a:1] # error
#[a:1, b: 2] = [b:2, a: 1] # error

#one important thing to remember when manipulating keyword lists is that they are just lists, so the longer the list more time it takes to find the key.

#Map is another type of array and is more used to store values, it's advantages over keyword lists is that you can use any value as key
#and maps doesn't care about the order of the key-values, so you can pattern match against a map or a subset of a map
#maps can be defined like the example bellow:

%{:a => 1, 3 => :three}

%{:a => 1} = %{3 => :three, :a => 1} # returns the map

#an atom key in a map can be accessed like this:

myMap = %{:a => "test"}
myMap.a

#all keys in a map can be accessed using brackets as well.
