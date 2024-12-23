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

=begin
# Iterate through a hash
fruit_quantity = {:apples => 21, :oranges => 58, :bananas => 99}

fruit_quantity.each do |fruit, quantity|
  puts "We have #{quantity} #{fruit}."
end
=end

# Print up to 16 in chunks of 4
=begin
i = 0
while i != 16
  puts "#{i + 1} #{i + 2} #{i + 3} #{i + 4}"
  i = i + 4
end

=end

# Print 4 numbers at a time
=begin
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18]

numbers_to_print = []

numbers.each do |number|
  numbers_to_print.push(number)
  if number % 4 == 0
    puts "Next set of 4 are ready, here we go"
    puts numbers_to_print
    numbers_to_print = []
  end
end
=end

=begin
# Create a better tree class
class Tree
  attr_accessor :name, :children, :parent

  def initialize(data)
    if data.is_a?(Hash)
      # If we get a hash, assume it has exactly one root node
      root_name, child_hash = data.first
      @name = root_name
      @children = []
      build_tree(child_hash)   
    else
      @name = data
      @children = []
    end
    @parent = nil
  end

  def build_tree(child_hash)
    child_hash.each do |child_name, grandchild|
      child = Tree.new(child_name)
      child.parent = self
      @children << child
      child.build_tree(grandchild) unless grandchild.empty?
    end
  end

  def print_tree(level = 0)
    puts " " * level + name
    children.each { | ch | ch.print_tree(level + 1)}
  end
end

family_tree = Tree.new({
  'grandpa' => { 
    'dad' => {
      'child1' => {},
      'child2' => {}
    }
  }
})

family_tree.print_tree
=end

# GREP a file

=begin
  # Write a snippet that takes an input
  # tests a string against that input
  # prints out if it can find it or not
  # 
  # Read a file
  # Use same input read
  # Use same input test
  # Print out lines where there's a match
=end

puts 'Type what you want to find...'

string_to_find = gets.chomp

users_regex = /#{string_to_find.to_s}/i

line_number = 1
File.foreach('./messing_about.txt') do |line|
  if users_regex.match(line.chomp)
    puts "Found #{string_to_find} in #{line} - number #{line_number}."
  end
  line_number = line_number + 1
end

puts "Finished checking file"

