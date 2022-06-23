=begin

Write a method that counts the number of occurrences of each element in a given array.

Example:

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)

Expected output:

car => 4
truck => 3
SUV => 1
motorcycle => 2

=end

# vehicles = [
#   'car', 'car', 'truck', 'car', 'SUV', 'truck',
#   'motorcycle', 'motorcycle', 'car', 'truck'
# ]

# def count_occurrences(array)
# 	count_hash = array.each_with_object({}) do |vehicle, hash|
# 		if !hash.include?(vehicle)
# 			count = array.count(vehicle) 
# 			hash [vehicle] = count
# 			puts "#{vehicle} => #{count}"
# 		end
# 	end
# end

# count_occurrences(vehicles)

=begin

LS solution:

def count_occurrences(array)
  occurrences = {}

  array.uniq.each do |element|
    occurrences[element] = array.count(element)
  end

  occurrences.each do |element, count|
    puts "#{element} => #{count}"
  end
end

Discussion

As we iterate over each unique element, we create a new key-value pair in occurrences, with the key as the element's value. To count each occurrence, we use Array#count to count the number of elements with the same value.

Lastly, to print the desired output, we call #each on the newly created occurrences, which lets us pass the keys and values as block parameters. Then, inside of the block, we invoke #puts to print each key-value pair.

Further Exploration
Try to solve the problem when words are case insensitive, e.g. "suv" == "SUV".

	P: Write a method which takes an array of strings. The strings represent vehicles and are a mixture of upper-case and lower-case alphabetical chars. Return the count of each vehicle (case insensitive) in the following format:

	car => 4
	truck => 3
	SUV => 1
	motorcycle => 2

	E:

	count_occurrences(['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'suv', 'TruCk', 'car', 'truck'])

	car => 4
	truck => 4
	suv => 2
	motorcycle => 2

	D:
		input: array of strings (wioth upper and lower case chars)
		output: strings printed individually in the format shown above

	A:

	- Count each unique string (disregarding case)
		- create a downcased version of array ('downcased_arr')
		- iterate over downcased_arr with a hash ('vehicle', 'hash')
			- create a key-value pair if the hash does not already include that string as a key. The value is the count of vehicle in downcased arr
	- Output the results with downcased string

	C:
=end

# vehicles = [
#   'car', 'car', 'truck', 'car', 'SUV', 'truck',
#   'motorcycle', 'motorcycle', 'suv', 'TruCk', 'car', 'truck'
# ]

# def count_occurrences(array)
# 	downcased_arr = array.map(&:downcase)
# 	occurrences = {}

#   downcased_arr.uniq.each do |element|
#     occurrences[element] = downcased_arr.count(element)
#   end

#   occurrences.each do |element, count|
#     puts "#{element} => #{count}"
#   end
# end

# count_occurrences(vehicles)

# OR WITH REGEX

# vehicles = [
#   'car', 'car', 'truck', 'car', 'SUV', 'truck',
#   'motorcycle', 'motorcycle', 'suv', 'TruCk', 'car', 'truck'
# ]

# def count_occurrences(array)
# 	occurrences = {}

#   array.each do |element|
# 		if !occurrences.include?(element.downcase)
#     occurrences[element.downcase] = array.count{|v|v =~ /#{element}/i}
# 		end
#   end

#   occurrences.each do |element, count|
#     puts "#{element} => #{count}"
#   end
# end

# count_occurrences(vehicles)

vehicles = [
	'car', 'car', 'truck', 'car', 'SUV', 'truck',
	'motorcycle', 'motorcycle', 'suv', 'TruCk', 'car', 'truck'
]


def count_occurrences(array)
  occurrences = {}

  new_arr = array.map(&:downcase).uniq
	new_arr.each do |element|
    occurrences[element] = array.count{|string|string.downcase == element}
  end

  occurrences.each do |element, count|
    puts "#{element} => #{count}"
  end
end

count_occurrences(vehicles)