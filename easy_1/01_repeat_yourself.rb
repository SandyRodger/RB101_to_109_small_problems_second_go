=begin

https://launchschool.com/exercises/a018e581

Write a method that takes two arguments, a string and a positive integer, and prints the string as many times as the integer indicates.

=end

def repeat(str, int)
	int.times{p str}
end

repeat('Hello', 3)

=begin

LS solution:

def repeat(string, number)
  number.times do
    puts string
  end
end

Discussion
When solving exercises, it can be beneficial to progress in small increments. We started out by defining repeat with two parameters. Then, to ensure everything worked properly, we added puts string inside the method and ran the code.

def repeat(string, number)
  puts string
end

This works correctly, however, it only prints string once. Our goal is to print string a specified number of times. One of the more suitable methods for this situation is Integer#times. Using this method, we can execute puts string any number of times. In this case, we want to print string the number of times indicated by number.