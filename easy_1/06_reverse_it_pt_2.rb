=begin

Write a method that takes one argument, a string containing one or more words, and returns the given string with words that contain five or more characters reversed. Each string will consist of only letters and spaces. Spaces should be included only when more than one word is present.

Examples:

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS

P: Write a method which takes a string and returns a modified version of input_str. The modification will be to reverse each word of greater than 4 letter length while maintaining it's capitalisations and position in the sentence.

E:

reverse_words('Professional')          # => lanoisseforP => one word is simply reversed
reverse_words('Walk around the block') # => Walk dnuora the kcolb = 4 letters is not enough for reversal
reverse_words('Launch School')         # => hcnuaL loohcS => capitalised letters are maintained.

D:
-input: a string of spaces, uppercase and lowercase letters.
-output: a string of equal length with some words reversed (Not specified whether it is the same string or a new string)

A:

- break the input into an array of words
- iterate over the array transformatively, reversing only long enough words.
- join the transformed array.

C:
=end

def reverse_words(sentence)
	sentence.split.map do |word|
		if word.length > 4
			word.reverse
		else
			word
		end
	end.join(' ')
end

p reverse_words('Professional')          # => lanoisseforP
p reverse_words('Walk around the block') # => Walk dnuora the kcolb
p reverse_words('Launch School')         # => hcnuaL loohcS

=begin

LS solution:

def reverse_words(string)
  words = []

  string.split.each do |word|
    word.reverse! if word.size >= 5
    words << word
  end

  words.join(' ')
end

Discussion

When given a string or an array, and asked to evaluate each character or element, your first instinct should be to reach for an iterator. Our goal here is to iterate over the given string and check each word for the number of characters it contains. If it has five or more characters then we'll reverse the word.

At the top of our method, we create an empty array named words that will hold each modified word of the result: these words will be reversed if long, or as-is if they are short. We use #each to iterate over string, but first, we need to separate each word in string using #split, which returns an array containing the separated words. For each word, we count the number of characters it contains using #size. If it contains five or more characters, we use the destructive method #reverse! to reverse the word. We mutate word so that we can add it to words by invoking words << word.

After iterating over string and evaluating each word, words will contain all of the words, with longer words reversed. Finally, we can invoke words.join(' ') to return the desired string.