#translateNumbers.rb

sizeScreen = 500;

def centerText message, sizeScreen
  return message.center(sizeScreen)
end

def leftText message, sizeScreen
  return message.ljust(sizeScreen/2)
end

def translatorNumber number

  singleNumbers = ['zero','one','two', 'three','four','five', 'six','seven', 'eight','nine']
  doubleNumbers = ['ten','eleven','twelve', 'thirteen','fourteen','fivteen', 'sixteen','seventeen', 'eighteen','nineteen']

  if number.length < 2
    puts "your number is single: " + singleNumbers[number.to_i]
  elsif number.length == 2 || number.to_i < 20
    puts "your number is duoble: " + doubleNumbers[number.to_i-10]
  else
    puts "Your number is big"
  end
end


puts centerText("==> Welcome to Translator numbers <==", sizeScreen)
puts leftText("Please write the number in integers:", sizeScreen)
number = gets.chomp
translatorNumber(number)
puts "Your number was "+ number

#1 = uno
