=begin

Consider the following method and a call to that method:

def my_method(a, b = 2, c = 3, d)
  p [a, b, c, d]
end

my_method(4, 5, 6)

Use the ruby documentation to determine what this code will print.

=end

def my_method(a, b = 2, c = 3, d)
  p [a, b, c, d]
end

my_method(4, 5, 6) # => [4, 5, 3, 6]

=begin
Discussion

Information about arguments can be found at http://ruby-doc.org/ by selecting the doc/syntax/calling_methods.rdoc link from the core API page. If you scroll down to the Default Positional Arguments section and start reading, you will learn that ruby lets you use default arguments in the middle of a number of positional arguments, much as we are doing here. The documentation shows that positional arguments are filled out first, then the default arguments are set with any values supplied, and, finally, default values are applied to anything remaining.

In this exercise, 4, 5 and 6 are assigned to the positional arguments a, b and d. Note that 5 overrides the default value for b, but c is not set to any of the listed values. c, instead, is assigned its default value, 3. Thus, when the results are printed, we see the results shown in our solution.

=end