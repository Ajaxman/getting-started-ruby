names = ['Ada', 'Belle', 'Chris']

puts names

languages = ['Spanish', 'German', 'English', 'Russian']

puts "But also this printable using to_s method"
puts languages.to_s


languages.each do |item|
  puts "Learning..." +  item
end
puts "End of program!"


5.times do
  puts  "Iteration.."
end

10.times do |iterator|

  puts "The number is:" + iterator.to_s

end

puts "No working with multidimension arrays".center(400)
puts "------->        <----------"

web = [["jsp", "php", "ruby"], ["Angularjs", "Jquery"], ["R", "Erlang"]]

puts web

def myFirstProgram
  puts "This is my first method"
end

myFirstProgram

def mySecondProgram name
  puts "Hello " + name
end

mySecondProgram "javier"
