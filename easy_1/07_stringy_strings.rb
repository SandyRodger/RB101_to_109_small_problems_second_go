=begin

Write a method that takes one argument, a positive integer, and returns a string of alternating 1s and 0s, always starting with 1. The length of the string should match the given integer.

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

P: Write a method which takes an integer and returns a string containing alternating 1 and 0. The str should start with a 1 and be the length of input_int.

E:
puts stringy(6) == '101010' => 6 length, elements at odd index are 0 and even index are 1
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

D:
input: int
output: string of 0s and 1s
- I will determine each element of output by whether its index is odd or even

A:

initialize a counter as 0
initialize an str as empty
- n times execute a block with an str, which is empty.
- if counter is even shovel a 1 into str.
- if counter is odd shovel a 0 into str.
- increment the counter by 1.
- return str

C:
 
=end

# def stringy(n)
# 	n.times.with_object('') do |idx, str|
# 		idx.even? ? str << '1' : str << '0'
# 	end
# end

# puts stringy(6) == '101010'
# puts stringy(9) == '101010101'
# puts stringy(4) == '1010'
# puts stringy(7) == '1010101'

=begin

LS solution:

def stringy(size)
  numbers = []

  size.times do |index|
    number = index.even? ? 1 : 0
    numbers << number
  end

  numbers.join
end

Discussion:

Performing a task a certain number of times should be fairly straightforward at this point. We use #times to iterate based on the number indicated by size. For each iteration, we use the index block parameter in a conditional to determine if the current number is even or odd. Since #times starts counting from 0, we know that the first number will be even. Knowing this, we can write our conditional to return 1 if index is even and 0 if index is odd.

We assign that value to a variable and, on the next line, we add it to an array, numbers. After #times has finished iterating, we're left with an array filled with 1s and 0s in the correct order. Now, all we have to do is invoke numbers.join to return the desired output.

Further Exploration
Modify stringy so it takes an additional optional argument that defaults to 1. If the method is called with this argument set to 0, the method should return a String of alternating 0s and 1s, but starting with 0 instead of 1.

=end

def stringy(n, i = 1)
	n.times.with_object('') do |idx, str|
		if i != 0 
			idx.even? ? str << '1' : str << '0'
		else
			idx.odd? ? str << '1' : str << '0'
		end
	end
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4, 0) == '0101'
puts stringy(7, 0) == '0101010'