=begin

Write a method that takes two arguments, a positive integer and a boolean, and calculates the bonus for a given salary. If the boolean is true, the bonus should be half of the salary. If the boolean is false, the bonus should be 0.

Examples:

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000

P: Write a method which takes an int and a boolean. It returns an int which is 0 if bool is false and half the input_int if bool is true.

E:

puts calculate_bonus(2800, true) == 1400 => 2800/2
puts calculate_bonus(1000, false) == 0 => no bonus alwas returns 0
puts calculate_bonus(50000, true) == 25000 => 50000/2


D:

input: int and boolean
output: 0 or positive int

if conditional / ternary operator

A:

- if boolean is false return 0
- otherwise return int/2

C:

=end

def calculate_bonus(salary, gets_bonus)
	gets_bonus ? salary/2 : 0
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000

=begin

LS solution:

def calculate_bonus(salary, bonus)
  bonus ? (salary / 2) : 0
end

Discussion:

The solution to this exercise takes advantage of the ternary operator. We're able to use bonus as the condition because it's a boolean, which means its value will only be true or false. If it's true, then we divide salary by 2 and return the quotient. If it's false, then we return 0.