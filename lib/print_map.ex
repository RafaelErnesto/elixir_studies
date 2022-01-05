#cars map
cars = %{ 1 => :mustang, 2 => :camaro, 3 => :defender}
printer = fn {key,_} -> IO.puts(cars[key]) end

Enum.each 1..3, fn key -> IO.puts(cars[key]) end

Enum.each cars, fn {key,_} -> IO.puts(cars[key]) end

Enum.each cars, fn {_,value} -> IO.puts(value) end

Enum.each cars, printer
