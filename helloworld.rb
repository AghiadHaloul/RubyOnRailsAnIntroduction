for i in 0..5
	puts i
end


def thisIsAFunction
	puts "ayy what's up"
end

def thisIsAlsoAFunction ()
	puts "(ayy what's up with paranthesis)"
end

thisIsAFunction
thisIsAlsoAFunction

def add(x,y)
	x = x + 3
	x + y
end
puts add(2,3)
#puts add("abcd","efgh")

def getMax (*numbers)
	return numbers.min
end
puts getMax("A","AA","AAA","AAB","ZZZ","BBXADSADA")

File.foreach( 'Text.txt' ) do |line|
	p line
	puts line
	#p line.chomp
	#p line.split
end

if File.exist? 'dummyFile'
	File.foreach('fakeFile.txt') do |line|
		p line
	end
else
	puts "WRONG UU"
end

puts "hello sir\\\\\\ \n\n"

def welcomeText(fname, lname)
	puts "Welcome, #{fname} #{lname}!"
end

welcomeText("Aghiad","Haloul")



def getSquare (a)
	puts "The square of #{a} is #{a*a}"
end

getSquare(9)

ThisIsAnArray = [69, "Sixty-nine", :whateverthisis]
ThisIsWordsArray = %w{First Second Third Fourth Fifth Sixth Seventh Eighth}

puts ThisIsWordsArray[-3]
puts "\n"
puts "#{ThisIsWordsArray.first} + #{ThisIsWordsArray.last}\n\n\n"

p ThisIsWordsArray[-4,3]
puts "\n"

p ThisIsWordsArray[0..4]

puts ThisIsWordsArray.join(" youknowwhati'msaying.\n")


mobilePhones = ["Apple", "Samsung", "Sony", "Huwawi"]
p mobilePhones
mobilePhones.push("Nokia")
p mobilePhones
mobilePhones.push()
p mobilePhones
mobilePhones << "HTC"
p mobilePhones
mobilePhones[0]="Skratta"
sortedPhones = mobilePhones.sort
p mobilePhones
p sortedPhones

queue = []
queue.push "one"
queue.push "two"
queue.push "three"
queue << "fourth"
p queue
queue.shift
p queue



arrr = [1,2,3,4,5,6,7,8,9,10]

arrr.each {|num| print num}
puts

greaterThan4 = arrr.select{|num| num > 4}.reject {|num| num}
p greaterThan4

multiplyBy10 = arrr.map{|x| x*10}
p multiplyBy10.reject{|x| x < 60}

some_range = 1..3
p some_range.max
p some_range.min
p some_range.include? "a"

puts ('a'..'x') === "r"

p ('a'..'z').to_a.sample(5)

target_age = 33
your_age = 23
case your_age
	when 1..17 then puts "no"
	when 18..(target_age/2)+7 then puts "yes"
	else puts "maybe"
end

hash_table = { "Name" => "Aghiad", "Age" => "23", "Address" => "15 Group 100, Al Rehab City 11841, Cairo, Egypt"}
puts hash_table["Address"]
puts "\n\n"
hash_table["Name"] = "Mhd Aghiad"
hash_table.each_pair do |key, value|
	puts "Key: #{key} - Value: #{value}"
end

p hash_table["asdasd"]

p hash_table["asdasd"]

frequency = Hash.new(0)

def adjust_colors (props = {foreground: "red", background: "white"})
	puts "Foreground: #{props[:foreground]}" if props[:foreground]
	puts "Background: #{props[:background]}" if props[:background]
	puts "\n"
end

adjust_colors
adjust_colors ({:foreground => "green"})
adjust_colors foreground: "red"




class Person
	def initialize(name, age)
		@name = name
		@age = age
	end
	def get_info
		@additional_info = "Interesting"
		"Name: #{@name}, age: #{@age}"
	end
	def name
		@name
	end
	def name= (new_name)
		@name = new_name
	end
end

person1 = Person.new("Joe", 24)
p person1.instance_variables
puts person1.get_info
p person1.instance_variables
person1.name= "Michael"
p person1.get_info