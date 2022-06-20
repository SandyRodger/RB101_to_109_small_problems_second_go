=begin

Locate the ruby documentation for methods File::path and File#path. How are they different?

My answer:

https://docs.ruby-lang.org/en/2.6.0/File.html#method-c-path

At the above link one finds a definition of File#path, which is a method that returns a string representation of the location of that file in memory. For example:

=end

p File.path("01_class_and_instance_methods.rb") # => "01_class_and_instance_methods.rb"

=begin

LS answer:

Both methods can be found on the documentation page for the File class in the Core API section. File::path is a class method, while File#path is an instance method.

Discussion
Class methods are called on the class, while instance methods are called on objects. Thus:

Copy Code
puts File.path('bin')
calls the class method File::path since we're calling it on the File class, while:

Copy Code
f = File.new('my-file.txt')
puts f.path
calls the instance method File#path since we're calling it on an object of the File class, namely f.

Pay attention when reading the documentation; make sure you are using a class method when you need a class method, and an instance method when you need an instance method.

=end