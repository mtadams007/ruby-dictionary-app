require_relative "definitions.rb"
require "colorize"

each = Definitions.new(".each is a method that is called on an array. It loops through every element of an array and runs its code on each element.","each")

count = Definitions.new(".count is a method that is called on an array. If no argument is passed then it returns the number of elements. If you pass a specific argument it returns the number of times that element shows up. If you pass a block, it returns the number of times that block evaluates as true.","count")

drop = Definitions.new(".drop(n) drops the FIRST n elements of an array and returns the new array.","drop")

first = Definitions.new(".first returns the first element of an object or array. .first(n) returns the first n elements of an array.","first")

include = Definitions.new(".include?(obj) checks if a given obj is contained in the array or object","include")

max = Definitions.new(".max returns the element with the maximum value.","max")

min = Definitions.new(".min returns the element with the minimum value","min")

minmax = Definitions.new(".minmax returns a two element array containing the elements with the minimum and maximum values","minmax")

one = Definitions.new(".one?{|obj|block} returns true if the given block is true once and only once. Otherwise it returns false","one")

reject = Definitions.new(".reject{|obj|block} returns an array where the given block returns false.","reject")

select = Definitions.new(".select{|obj|block} returns an array where the given block returns true.","select"
)

my_dictionary = Dictionary.new

my_dictionary.add_new_entry(each)
my_dictionary.add_new_entry(count)
my_dictionary.add_new_entry(drop)
my_dictionary.add_new_entry(first)
my_dictionary.add_new_entry(include)
my_dictionary.add_new_entry(max)
my_dictionary.add_new_entry(min)
my_dictionary.add_new_entry(minmax)
my_dictionary.add_new_entry(one)
my_dictionary.add_new_entry(reject)
my_dictionary.add_new_entry(select)


input = ARGV
input_length = input.length

if input_length > 2 && input[0]=='add'
  title = input[1]
  define = input.slice!(2,input_length)
  my_dictionary.add_new_entry(my_dictionary.create_new_entry(title,define.join(" ")))
end

if input_length == 1
  if !valid_input(my_dictionary.definition_array, input)
    puts "I'm sorry, I don't know that method :(".red
  end
end

# puts my_dictionary.definition_array[11].define
