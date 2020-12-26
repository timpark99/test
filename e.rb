=begin 
puts "hello world"
# Naming a file

var = "codecademy"

# Method to get the length of a string
puts var.length #10

# Method to get the string reversed
puts var.reverse #ymedacedoc

# Method to convert all letters to uppercase
puts var.upcase # CODECADEMY

puts 'codecademy'.upcase
# CODECADEMY

puts 'Codecademy'.downcase
# codecademy

age = 30

puts "Hi, my name is Cody, and I am #{age} years old"
# "Hi, my name is Cody, and I am 30 years old"

puts 'enter a number: '
num = gets.chomp
num = num.to_i;

if num == 5
    puts "number is 5"
elsif num == 10
    puts 'number is 10'
elsif num == 11
    puts 'number is 11'
else
    puts 'number is something other than 5, 10, or 11'
end


grade1 = 50
grade2 = 30
grade3 = 80

if grade1 > grade2 || grade1 > grade3
    puts 'Grade 1 is not the lowest score!'
end

print 'Enter a number'
number = gets.to_i
unless number > 10
    puts 'number is less than 10.'
end


for i in 1..10
    next if i%2 == 0
    puts i
end

# In this example, the next keyword along with a shorthand if statement is used to skip over the even numbers in the sequence.


5.times{puts 'Codecademy'}


numbers = [1,2,3,4,5]
#An array of Integers

words = ['See','Spot','run']
#An array of Strings

mixed = ['hello', 5, true, 3.0]
#An array with a String, Integer, Boolean, and Float

empty = []
#An empty array

profile = {
    'name' => 'Magnus',
    'profession' => 'chess player',
    'ranking' => 1,
    'grandmaster?' => true
}

# name, profession, ranking, and grandmaster are the keys.  magnus, chess player, 1 and true are the values.
puts profile['name'] # => Magnus

#Creating a hash through literal notation:
lunch = {
    'protein' => 'chicken',
    'greens' => 'lettuce',
    'organic?' => true
}

#Creating a hash through Hash.new
lunch = Hash.new
puts lunch # => {}

#Bracket notation applies to any hash, regardless of how it was initialized
teammates = Hash.new
teammates['forward'] = 'Messi'

salary = {
    'starting' => 40000
}
salary['mid-level'] = 60000

multi_array = [[0,1,2,3],[4.5, true, 'hi']]

# Accessing the array at index 1
puts multi_array[1] # => [4.5, true, 'hi']

# Accessing the element at index 0 within the array at index 1
puts multi_array[1][0] # => 4.5


#In this example, the each method iterates over every color int he colors array and prints it to the console.
colors = ['red', 'blue', 'green', 'yellow']

colors.each{|color| puts color}
# Output
#red
#blue
#green
#yellow

#When iterating over hashes, two placeholder variables are needed to represent each key/value pair.

polygons = {
    'pentagon' => 5,
    'hexagon' => 6,
    'nonagon' => 9
}

polygons.each do|shape, sides|
    puts "A #{shape} has #{sides} sides."
end

#Output
#A pentagon has 5 sides.
# a hexagon has 6 sides.
#A nonagon has 9 sides.


puts "Keanu" <=> "Adrianna" # The first letters of each word are compared in ASCII order and since "K" comes after "A", 1 is printed.
puts 1 <=> 2 #-1
puts 3 <=> 3 # 0 

#<=> can also be used inside of a block and to sort values in descending order:
my_array = [3,0,8,7,1,6,5,9,4]
my_array.sort! {|first_num, second_num|second_num<=>first_num
}
print my_array
#Output => [9,8,7,6,5,4,3,1,0]


# The * preceding the parameter "clubs" allows for multiple arguments to be passed into the method when you actually call it.
def extra_curriculars(*clubs)
    clubs.each { |club| puts "After school, I'm involved with #{club}"}
end

extra_curriculars("chess club", "gymnastics", "anime club", "library services")


# The block, {|i| puts i} is passed the current array item each time it is evaluated.  This block prints the item.
[1,2,3,4,5].each { |i| puts i }


def generous_tip(bill)
    return bill * (0.25)
end

puts generous_tip(100) #25

#In this example, the generous_tip method is returning the product of bill and 0.25.  In order to see that value, a "puts" or "print" can be added before the method call.


my_array = [3,4,8,7,1,6,5,9,2]
my_array.sort!
#Attaching an ! to the end of .sort or any other Ruby method modifies the original array.
print my_array
# => [1,2,3,4,5,6,7,8,9]
#If you didn't use !, print my_array returns the original array.


def square(num) #num is the parameter
  puts num ** 2
end

square(5) #5 is the argument
#Output => 25

def greeting
  puts "Hello world!"
end

#In this example, the first line or header contains the keyword "def" and the method name.  puts "Hello world!" is within the body of the method, which describes the certain task that the method carries out.  It is also indented two spaces by convention.  Following the body, theh method ends with the end keyword.

2.times do
  puts "I'm a code block!"
end

3.times { puts "So am I!" }


my_bologna = {
  :first_name => "Oscar",
  :second_name => "Meyer",
  :slices => 12
}

puts my_bologna[:second_name]


my_progress = {
  :program => "Codecademy",
  :language => "Ruby",
  :enthusiastic? => true
}

#Key symbols and their values can be defined with a =>, also known as a hash rocket.

my_progress = {
  program: "Codecademy",
  language: "Ruby",
  enthusiastic?: true
}


olympic_trials = {
  Sally: 9.58,
  John: 9.69,
  Bob: 14.91
}

olympic_trials.select { |name, time| time < 10.05 }
# The example above returns {:Sally =>9.58, :John=>9.69} since Sally and John are the only keys whose values meet the time < 10.05 criteria.


eren_jaeger = {
  age: 15,
  enemy: "titans",
  branch: "Survey Corps"
}

eren_jaeger.each_key { |key| puts key }
eren_jaeger.each_value { |value| puts value }


tv_show = "Bob's Burgers"

case tv_show
  when "Archer"
    puts "I don't like the voice of Archer."
  when "Bob's Burgers"
    puts "I love the voice of Bob Belcher."
  else
    puts "I don't know who voices this cartoon."
end

#in this example, a case statement is used to check for multiple possible values of tv_show.  Since tv_show is Bob's Burgers", the second when is evaluated to true.  If none of the conditions were met, Ruby would evaluate the else statement.


puts "A".respond_to?(:push)
# => false
# Here, the following Ruby code will return false since .push can't be called on a String object.

puts "A".respond_to?(:next)
# => true
# Here, however, the following Ruby code will return true since .next can be called on a String object.  Calling .next on the letter "A" would return the letter "".


a = true
b = false
c = true

puts a || b
puts b || a
puts a && c
puts a && b


tacos_eaten = 12
puts tacos_eaten >= 5 ? "Sir, you've had enough!" : "Keep eating tacos!"


"B".upto("F") { |letter| print letter, " " }
5.downto(0) { |num| print num, " " }


boyfriend = nil
boyfriend ||= "Jimmy Jr."
boyfriend ||= "Josh"
puts boyfriend

#In this example, since the original value of boyfriend is set to nil which is nothing, Ruby assigns it a value of "Jimmy Jr." on the following line.  Once boyfriend holds this real value, another reassignment is overlooked by Ruby and the previous value holds.


array = [1,2,3]
array << 4
print array
puts "Hello," << " welcome to Codecademy."


num = 6
if num % 2 == 0
  puts "This number is even!"
end

#Refactored, this can be stated in a single line as demonstrated below:
puts "This number is even!" if num % 2 == 0


def product(x,y)
  x * y
end

puts product(5,4)


proc_test = Proc.new { puts "I am the proc method!" }
lambda_test = lambda { puts "I am the lambda method!" }

proc_test.call
lambda_test.call


def proc_demo_method
  proc_demo = Proc.new {return "Only I print!" }
  proc_demo.call
  "But what about me?" # Never reached
end
puts proc_demo_method
# Notice that the proc breaks out of the method when it returns the value.

def lambda_demo_method
  lambda_demo = lambda { return "Will I print?" }
  lambda_demo.call
  "Sorry - it's me that's printed."
end
puts lambda_demo_method


first_arr = [3,4,5]
second_arr = first_arr.collect { |num| num * 5 }
print second_arr


def yield_test
  puts "I'm inside the method."
  yield
  puts "I'm also inside the method."
end

yield_test { puts ">>> I'm butting into the method!" }


square = Proc.new { |x| x ** 2 }
# A proc is defined by calling Proc.new followed by a block.

[2,4,6].collect!(&square)
# When passing a proc to a method, an & is used to convert the proc into a block

puts [2,4,6].collect!(&square)


class Child
  @@children = 0
  def initialize(name, birth_year)
    @name = name
    @birth_year = birth_year
    @@children +=1
  end

  def self.children_added
    return @@children
  end 
end 

naomi = Child.new("Naomi", 2006)
bertha = Child.new("Bertha", 2008)

puts Child.children_added 


class Fighter
  def initialize(name, style, division, age)
    @name = name
    @style = style
    @division = division
    @age = age
  end 
end 

conor = Fighter.new("Conor", "mixed martial arts", "Welterweight", 31)


class Student
  def initialize(name, grade)
    @name = name
    @grade = grade
  end 
end 

# In this example, name and grade are the instance variables.



class Person
  def initialize
    # this code runs when a new instance is created
  end 
end 


class Trip
  def initialize(duration, price)
    @duration = duration
    @price = price
  end 
end 

class Cruise < Trip
  def initialize(duration, price)
    super
  end
end 

spain_backpacking = Trip.new(14, 800.00)
carnival = cruise.new(7, 2400.00)

# In this example, the Cruise class inherits from the Trip class and all of its attributes, including duration and price, are carried over with the super keyword.


class NewClass
  # code for this class
end 

# A basic class definition consists of the class keyword, the name of the class in CamelCase (with the first letter capitalized) format, and an end keyword.


class Student
  attr_reader :name
  attr_writer :name
  def initialize(name)
    @name = name
  end 
end 
#In this example, Ruby is able to both read and write the @name instance variable since it was passed to attr_reader and attr_writer as a symbol.

top_student = Student.new("Jyothi")
puts top_student.name
#In classes with attr_reader, instance variables can be accessed using . notation

puts top_student.name
top_student.name = "Anika"
puts top_student.name
#In classes with attr_writer, instance variables can be reassigned using . notation


#To retrieve a constant from the Math module, the scope resolution operator (::), should be used.

puts Math::PI

#In this example, Ruby is targetting the PI constant from the Math module using the scope resolution operator, (::), and printing its value to the console.


require 'date'

puts Date.today


class CollegeStudent
  attr_reader :dorm
  attr_accessor :major
  
  def initialize(dorm, major)
    @dorm = dorm
    @major = major
  end 
end 

#In this example, Ruby is able to only read the @dorm instance variable but both read and write the @major instance variable since it was passed to the attr_accessor method.

#A Ruby module can be created using the module keyword followed by the module name written in CapitalizedCamelCase format finalized with an end.

module MyPizza
  FAVE_TOPPING = "Buffalo Chicken"
end 
#In this example, myPizza is a module that holds a constant, FAVE_TOPPING, set equal to the string, Buffalo Chicken.


puts "I love espresso".length
puts "Eric".reverse


print "What's your first name? "
first_name = gets.chomp
first_name.capitalize!

print "What's your last name? "
last_name = gets.chomp
last_name.capitalize!

print "What city are you from? "
city = gets.chomp
city.capitalize!

print "What state or province are you from? "
state = gets.chomp
state.upcase!

puts "Your name is #{first_name} #{last_name} and you're from #{city}, #{state}!"


print "Integer please: "
user_num = Integer(gets.chomp)

if user_num < 0
  puts "You picked a negative integer!"
elsif user_num > 0
  puts "You picked a positive integer!"
else
  puts "You picked zero!"
end 


hungry = false
unless hungry
  puts "I'm wriing Ruby programs!"
else
  puts "Time to eat!"
end 


is_true = 2 != 3
is_false = 2 ==3


print "Thtring, pleathe!: "
user_input = gets.chomp
user_input.downcase!

if user_input.include? "s"
  user_input.gsub!(/s/, "th")
else
  puts "Nothing to do here!"
end 

puts "Your string is: #{user_input}"

  
counter = 1
while counter < 11
  puts counter
  counter = counter + 1
end


counter = 1
until counter > 10
  puts counter
  #Add code to update 'counter' here!
  counter+=1
end 


for num in 1...10
  puts num
end 


i = 20
loop do
  i-=1
  puts "#{i}"
  break if i<=0
end 


i=20
loop do
  i-=1
  next if i%2==1
  print "#{i}"
  break if i<=0
end 


array = [1,2,3,4,5]
array.each do |x|
  x+=10
  puts "#{x}"
end 


odds=[1,3,5,7,9]
odds.each{|x|
  print x*2
}


10.times{puts "Chunky bacon!"}


i=1
while i<=50
  print i
  i+=1
end 


i=1
until i==51 do
  print i
  i+=1
end 


m=0
loop do
  m+=1
  print "Ruby!"
  break if m==30
end 


30.times{print "Ruby!"}


puts "Text to search through: "
text=gets.chomp
puts "Word to redact: "
redact=gets.chomp

words=text.split(" ")

words.each do |word|
  if word!=redact
    print word+" "
  else
    print "REDACTED "
  end 
end 


multi_d_array=[[0,0,0,0],[0,0,0,0],[0,0,0,0],[0,0,0,0]]
multi_d_array.each{|x|puts"#{x}\n"}


hash = {
  key1 => value1,
  key2 => value2,
  key3 => value3
}


my_hash = { "name" => "Eric",
  "age" => 26,
  "hungry?" => true
}

puts my_hash["name"]
puts my_hash["age"]
puts my_hash["hungry?"]


friends = ["Milhouse", "Ralph", "Nelson", "Otto"]
family = { "Homer" => "dad",
  "Marge" => "mom",
  "Lisa" => "sister",
  "Maggie" => "sister",
  "Abe" => "grandpa",
  "Santa's Little Helper" => "dog"
}

friends.each { |x| puts "#{x}" }
family.each { |x, y| puts "#{x}: #{y}" }


s = [["ham", "swiss"], ["turkey", "cheddar"], ["roast beef", "gruyere"]]
s.each { |sub_array| sub_array.each { |x| puts x } }


secret_identities = {
  "The Batman" => "Bruce Wayne",
  "Superman" => "Clark Kent",
  "Wonder Woman" => "Diana Prince",
  "Freakazoid" => "Dexter Douglas"
}

secret_identities.each { |x,y| puts "#{x}: #{y}"}


lunch_order = {
  "Ryan" => "wonton soup",
  "Eric" => "hamburger",
  "Jimmy" => "sandwich",
  "Sasha" => "salad",
  "Cole" => "taco"
}

lunch_order.each { |x,y| puts y}


puts "Text please: "
text = gets.chomp

words = text.split(" ")
frequencies = Hash.new(0)
words.each { |word| frequencies[word] += 1 }
frequencies = frequencies.sort_by {|a,b|b}
frequencies.reverse!
frequencies.each { |word, frequency| puts word + " " + frequency.to_s }


def prime(n)
  puts "That's not an integer." unless n.is_a? Integer
  is_prime = true
  for i in 2..n-1
    if n % i == 0
      is_prime = false
    end 
  end 
  if is_prime
    puts "#{n} is prime!"
  else
    puts "#{n} is not prime."
  end 
end 

prime(2)
prime(9)
prime(11)
prime(51)
prime(97)


def puts_1_to_10
  (1..10).each { |i| puts i }
end 

puts_1_to_10


def what_up(greeting, *friends)
  friends.each { |friend| puts "#{greeting}, #{friend}!" }
end 

what_up("What up", "Ian", "Zoe", "Zenas", "Eleanor")


def add(x,y)
  return x+y
end 


def greeter(name)
  return "Hello " + name
end 

def by_three?(number)
  if number % 3 == 0
    return true
  end 
  return false
end 


1.times do
  puts "I'm a code block!"
end 

1.times { puts "As am I!" }


# method that capitalized a word
def capitalize(string)
  puts "#{string[0].upcase}#{string[1..-1]}"
end 

capitalize("ryan")
capitalize("jane")

# block that capitalizes each string in the array
["ryan", "jane"].each { |string| puts "#{string[0].upcase}#{string[1..-1]}"}


books = ["Charlie and the Chocolate FActor", "War and Peace", "Utopia", "A Brief History of Time", "A Wrinkle in Time"]

# To sort our books in ascending order, in-place
books.sort! { |firstBook, secondBook| firstBook <=> secondBook }

# Sort your books in descending order, in-place below
books.sort! { |firstBook, secondBook| secondBook <=> firstBook }


my_array = [1,2,3,4,5]
my_array.each { |x| puts x**2}


def alphabetize(arr, rev=false)
  if rev
    arr.sort { |item1, item2| item2 <=> item1 }
  else
    arr.sort { |item1, item2| item1 <=> item2 }
  end 
end 

books = ["Heart of Darkness", "Code Complete", "The Lorax", "The Prophet", "Absalom, Absalom!"]

puts "A-Z: #{alphabetize(books)}"
puts "Z-A: #{alphabetize(books, true)}"


def alphabetize(arr, rev=false)
  arr.sort!
  if rev
    arr.reverse!
  else
    return arr
  end 
end 

numbers = [5,1,3,8]
puts alphabetize(numbers, true)


matz = {"First name" => "Yukihiro",
  "Last name" => "Matsumoto",
  "Age" => 47,
  "Nationality" => "Japanese",
  "Nickname" => "Matz"
}

matz.each { |x,y| puts y }


puts "string".object_id
puts "string".object_id

puts :symbol.object_id
puts :symbol.object_id


symbol_hash = {
  :one => 1,
  :two => 2,
  :three => 3
}


strings = ["HTML", "CSS", "JavaScript", "Python", "Ruby"]
symbols = []

strings.each { |s| symbols.push(s.to_sym) }
print symbols


require 'benchmark'

string_AZ = Hash[("a".."z").to_a.zip((1..26).to_a)]
symbol_AZ = Hash[(:a..:z).to_a.zip((1..26).to_a)]

string_time = Benchmark.realtime do
  100_000.times { string_AZ["r"] }
end 

symbol_time = Benchmark.realtime do
  100_000.times { symbol_AZ[:r] }
end 

puts "String time: #{string_time} seconds."
puts "Symbol time: #{symbol_time} seconds."


movie_ratings = {
  memento: 3,
  primer: 3.5,
  the_matrix: 5,
  truman_show: 4,
  red_dawn: 1.5,
  skyfall: 4,
  alex_cross: 2,
  uhf: 1,
  lion_king: 3.5
}

good_movies = movie_ratings.select { |x,y| y>3 }
movie_ratings.each_key { |x| puts x }


movies = {
  Memento: 3,
  Primer: 4,
  Ishtar: 1
}

puts "What would you like to do?"
puts "-- Type 'add' to add a movie."
puts "-- Type 'update' to update a movie."
puts "-- Type 'display' to display all movies."
puts "-- Type 'delete' to delete a movie."

choice = gets.chomp.downcase
case choice
when 'add'
  puts "What movie do you want to add?"
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "What's the rating? (Type a number 0 to 4.)"
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i
    puts "#{title} has been added with a rating of #{rating}."
  else 
    puts "That movie already exists! Its rating is #{movies[title.to_sym]}."
  end 

when 'update'
  puts "What movie do you want to update?"
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "Movie not found!"
  else
    puts "What's the new rating? (Type a number 0 to 4.)"
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i
    puts "#{title} has been updated with new rating of #{rating}."
  end 

when 'display'
  movies.each do |movie, rating|
    puts "#{movie}: #{rating}"
  end 

when 'delete'
  puts "What movie do you want to delete?"
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "Movie not found!"
  else 
    movies.delete(title.to_sym)
    puts "#{title} has been moved."
  end 

else
  puts "Sorry, I didn't understand you."
end 


puts "cat".between?("ant", "zebra")


require "pry"

a = [1,2,3]
a << 4
binding.pry
puts a


require "pry"

arr = [1, "two", 3, 4]
arr.each do |element|

binding.pry

end


require "pry"
arr = []
1930.times { arr << "The City of Lost Heaven" }

binding.pry
prying = true


puts 'The man said, \'Hi there!\''


puts 16.divmod(5)


puts 17 % -5
puts 17.remainder(-5)


a = puts "stuff"
puts a


puts 4936 / 1000
puts 4936 % 1000 / 100
puts 4936 % 1000 % 100 / 10
puts 4936 % 1000 % 100 % 10


def some_method number
  number = 7
end 

a = 5
some_method(a)
puts a


a = [1,2,3]
# Example of a method definition that modifies its argument permanently
def mutate(array)
  array.pop
end 

p "Before mutate method: #{a}"
mutate(a)
p "After mutate method: #{a}"


def add_three(number)
  number + 3
end 

returned_value = add_three(4)
puts returned_value


def first
  puts "first method"
end 

def second
  first
  puts "second method"
end 

second
puts "main method"


def scream(words)
  words = words + "!!!!"
  puts words
end 

scream("Yippeee")


if x == 3 then puts "x is 3" end
# example 4: must use "then" keyword when using 1-line syntax
puts "x is 3" if x == 3
puts "x is NOT 3" unless x == 3


a = 5

answer = case a
  when 5
    "a is 5"
  when 6
    "a is 6"
  else
    "a is neither 5, nor 6"
  end 

puts answer


a = 5
case
when a == 5
  puts "a is 5"
when a == 6
  puts "a is 6"
else
  puts "a is neither 5, nor 6"
end 


a = 5
if a 
  puts "how can this be true?"
else 
  puts "it is not true"
end 


loop {
  puts "This will keep printing until you hit Ctrl + c"
}


i = 0
loop do
  i += 2
  if i == 4
    next
  end 
  puts i
  if i == 10
    break
  end 
end 


def doubler(start)
  puts start
  if start < 10
    doubler(start * 2)
  end 
end 

doubler(2)


def fibonacci(number)
  if number < 2
    number
  else 
    fibonacci(number-1) + fibonacci(number - 2)
  end 
end 

puts fibonacci(600)


x = [1,2,3,4,5]
x.each do |a|
  a + 1
end 
puts x


x = ""
while x != "STOP" do
  puts "Hi, How are you feeling?"
  ans = gets.chomp
  puts "Want me to ask you again?"
  x = gets.chomp
end 


array = [1, 'Bob', 4.33, 'another string']
puts array.first
puts array.last
puts array[0]
puts array[-1]


a = [1,2,3,4]
puts a.map { |num| num**2 }
puts a.collect { |num| num**2 }
puts a.each { |num| num**2 }
puts a


arr = ["b", "a"]
arr = arr.product(Array(1..3))
puts arr.first.delete(arr.first.last)

arr = ["b", "a"]
arr = arr.product([Array(1..3)])
puts arr.first.delete(arr.first.last)


family = { uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank", "rob", "david"],
            aunts: ["mary", "sally", "susan"]
}

immediate_family = family.select { |k,v|
  k == :sisters || k == :brothers
}

arr = immediate_family.values.flatten
p arr


cat = {name: "whiskers"}
weight = {weight: "10 lbs"}
puts cat.merge(weight)
puts cat
puts weight
puts cat.merge!(weight)
puts cat
puts weight


opposites = {positive: "negative", up: "down", right: "left"}
opposites.each_key { |key| puts key }
opposites.each_value { |value| puts value }
opposites.each { |key, value| puts "The opposite of #{key} is #{value}" }


person = {name: 'Bob', occuption: 'web developer', hobbies: 'painting'}
puts person[:name]


x = "hi there"
my_hash = {x: "some value"}
my_hash2 = {x => "some value"}

puts my_hash
puts my_hash2

# the first hash that was created used a symbol x as the key.  The second hash used the string value of the x variable as the key.


words = ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

result = {}

words.each { |word|
  key = word.split('').sort.join
  if result.has_key?(key)
    result[key].push(word)
  else
    result[key] = [word]
  end 
}

result.each_value do |v|
  puts "-----"
  p v
end 


def has_a_b?(string)
  if string =~ /b/
    puts "We have a match!"
  else
    puts "No match here."
  end 
end 

has_a_b?("basketball")
has_a_b?("football")
has_a_b?("hockey")
has_a_b?("golf")


def take_block(number, &block)
  block.call(number)
end 

number = 42
take_block(number) do |num|
  puts "Block being called in the method! #{num}"
end 


talk = Proc.new do |name|
  puts "I am talking to #{name}"
end 

talk.call "Bob"


def take_proc(proc)
  [1,2,3,4,5].each do |number|
    proc.call number
  end 
end 

proc = Proc.new do |number|
  puts "#{number}. Proc being called in the method!"
end 

take_proc(proc)


begin
  # perform some dangerous operation
rescue 
  # do this if operation fails
  # for example, log the error
end 


names = ['bob', 'joe', 'steve', nil, 'frank']

names.each do |name|
  begin
    puts "#{name}'s name has #{name.length} letters in it."
  rescue 
    puts "Something went wrong!"
  end 
end 


zero = 0
puts "Before each call"
zero.each { |element| puts element } rescue puts "Can't do that!"
puts "After each call"


def divide(number, divisor)
  begin
    answer = number / divisor
  rescue ZeroDivisionError => e
    puts e.message
  end 
end 

puts divide(16,4)
puts divide(4,0)
puts divide(14,7)


loop do
  puts x = 5
end 
=end

A = [1,2,3]
puts A.map

  














    
          































































































































































































































































































































