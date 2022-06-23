=begin

Write a method that takes one argument, a string, and returns a new string with the words in reverse order.

Examples:

puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts reverse_sentence('') == ''
puts reverse_sentence('    ') == '' # Any number of spaces results in ''

P: Write a method which takes a string sentence and returns the string with the word order reversed.

E:

puts reverse_sentence('Hello World') == 'World Hello' 
puts reverse_sentence('Reverse these words') == 'words these Reverse' => the words are unchangesd, only their order is different.
puts reverse_sentence('') == '' => empty strings are valid input.
puts reverse_sentence('    ') == '' # Any number of spaces results in ''

D:

-input: a string sentence
-output: a string sentence.
I will split the string into an array before changing the order, then rejoin it at the end.

A:

- split the string into an array at the spaces. (input_arr)
- iterate over input_arr with an empty string (output_str)
	- put each word into the first place of the output_str followed by a space
- return the output_str minus the last space.

C:
=end

def reverse_sentence(str)
	input_arr = str.split(' ')
	input_arr.each_with_object('') do |word, output|
		output.prepend(word + ' ')
	end[0..-2]
end

puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts reverse_sentence('') == ''
puts reverse_sentence('    ') == '' # Any number of spaces results in ''

=begin

LS solution + discussion:

def reverse_sentence(string)
  string.split.reverse.join(' ')
end

Discussion
To reverse the order of substrings within a string, we first need to separate those substrings. In our solution, we use #split with no arguments to separate each word and place it in an array. To reverse the order of the words, we then invoke #reverse on the array. Now, string looks like this:

Copy Code
'Hello World'.split.reverse # => ["World", "Hello"]
That's precisely what we want except we need it to be a string, not an array. To accomplish this, we invoke #join which joins every element in an array using the given argument as the delimiter.

Note that we don't need to do anything special to handle the last two tests. Since split splits on whitespace when invoked without an argument, both '' and ' ' cause split to return an empty array.