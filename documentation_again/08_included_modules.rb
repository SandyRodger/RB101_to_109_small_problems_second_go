a = [5, 9, 3, 11]
puts a.min(2)

=begin

Discussion
If you look at the Array documentation for version 2.3.0, you won't find any mention of #min, nor will you find it in the Parent class, Object. It's obvious, though, that it exists since the original code works. Where, then, can you find the documentation for #min?

Some languages have a feature called multiple inheritance (aka, MI). With MI, as it's often abbreviated, a class can inherit from two or more immediate superclasses. Inheriting from multiple superclasses, though, has pitfalls. To avoid these pitfalls, Ruby doesn't allow MI.

Ruby uses something like MI, but without the worst of the pitfalls. It's called mix-in modules, or, more simply, mix-ins. Mix-ins provide a way for classes of different types to share behaviors without using inheritance.

A class can use a mix-in module by using the include method. Once included, all the mix-in's methods become available to objects of the class.

One of the most commonly used mix-ins in ruby is the Enumerable module; it provides much of the functionality needed to iterate through collections such as Array, Hash, and Range. If you look on the left-hand side of the documentation for the Array class, you will see Enumerable listed under the heading of Included Modules. Click on Enumerable to view the Enumerable documentation.

Once you have the Enumerable documentation in front of you, scroll down to the documentation for #min. You can see from this documentation that #min takes an optional argument that specifies how many values it should return -- note that you have to look at the examples to learn what the optional argument does. In our case, we want two values, so we alter our call to #min by adding the argument 2.

How do you know whether to look at the Included Modules or the Parent class for methods you can't find in the main documentation for a class? The truth is, there is no easy way to tell; you need to search both until you find the documentation you need. Google can be your friend, as can the search feature on the ruby-doc.org site, but finding the right documentation isn't easy.
=end

