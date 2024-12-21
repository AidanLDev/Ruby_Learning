=begin
# Reading a file from a code block and otherwise
text = 'Hey this is an great file!
  It is getting longer and longer
  I wonder how we will ever read it all?'

# File.write('messing_about.txt', text)

files_text = File.read('./messing_about.txt')

file_text_block = ''

File.foreach('./messing_about.txt') do |file|
  puts file 
end

puts file_text_block

# puts files_text

=end

=begin
# Converting a hash into an array?
aidan = {:name => 'Aidan', :age => 30}
puts aidan

aidan_array = aidan.to_a
puts aidan_array.class

# Converting an array to a hash
fruit = ['Apple', 53, 'Banana', 90, 'Jack Fruit', 2]
hash_of_fruit = Hash[*fruit]

puts hash_of_fruit
=end

# Iterate through a hash

