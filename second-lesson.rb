var1 = 'stop'
var2 = 'underline'
var3 = 'Can you pronunce this text in reverse'

puts var1.reverse
puts var2.reverse
puts var3.reverse
puts var1
puts var2
puts var3

puts "Whatis your name?"
#name = gets.chomp
name = 'javier'
puts "your name is very small jajaja [size:" + name.length.to_s + "]"


letters = 'aAbBcCdDeE'
puts letters.upcase
puts letters.downcase
puts letters.swapcase
puts letters.capitalize
puts ' a'.capitalize
puts letters

lineWidth = 60

puts (       'a'.center(lineWidth))
puts       'v'.center(lineWidth)
puts(          'When along came a spider'.center(lineWidth))
puts(         'Which sat down beside her'.center(lineWidth))
puts('And scared her poor shoe dog away.'.center(lineWidth))


puts "1.- getting started.......".ljust(lineWidth/2) + ".....pag 1".rjust(lineWidth/2)
puts "2.- Objects........".ljust(lineWidth/2) + "....pag 12".rjust(lineWidth/2)

puts(Math::PI)
puts(Math::E)
puts(Math.cos(Math::PI/3))
puts(Math.tan(Math::PI/4))
puts(Math.log(Math::E**2))
puts((1 + Math.sqrt(5))/2)
