p """
The #reduce method (also called #inject) is possibly the most difficult-to-grasp enumerable for new coders. 
The idea is simple enough, though: it reduces an array or hash down to a single object. 
You should use #reduce when you want to get an output of a single value.
"""

p "with array "
my_numbers = [5, 6, 7, 8]
sum = 0

my_numbers.each { |number| sum += number }

sum
#=> 26

p "-------"

my_numbers = [5, 6, 7, 8]

my_numbers.reduce { |sum, number| sum + number }
#=> 26

p "-------"

my_numbers = [5, 6, 7, 8]

my_numbers.reduce(1000) { |sum, number| sum + number }
#=> 1026