=begin

What do each of these puts statements output?
=end

a = %w(a b c d e)                      # => ["a", "b", "c", "d", "e"]
puts a.fetch(7)                        # =>  IndexError exception
puts a.fetch(7, 'beats me')            # => 'beats me'
puts a.fetch(7) { |index| index**2 }   # => 49

=begin
DOCUMENTATION:

fetch(index) → obj
fetch(index, default) → obj
fetch(index) {|index| block} → obj
Tries to return the element at position index, but throws an IndexError exception if the referenced index lies outside of the array bounds. This error can be prevented by supplying a second argument, which will act as a default value.

Alternatively, if a block is given it will only be executed when an invalid index is referenced.

Negative values of index count from the end of the array.

a = [ 11, 22, 33, 44 ]
a.fetch(1)               #=> 22
a.fetch(-1)              #=> 44
a.fetch(4, 'cat')        #=> "cat"
a.fetch(100) {|i| puts "#{i} is out of bounds"}
                         #=> "100 is out of bounds"
=end