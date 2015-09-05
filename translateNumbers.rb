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
    return singleNumbers[number.to_i]
  elsif number.length == 2 and number.to_i < 20
    return doubleNumbers[number.to_i-10]
 elsif number.to_i >= 20 and number.to_i < 100
   bigNumbers = ['twenty','thirty','forty','fifty','sixty','seventy','eighty','ninety']
   doubleNumber = number[0]
   singleNumber = number[1]
   numberAsString = bigNumbers[doubleNumber.to_i-2] + '-' + singleNumbers[singleNumber.to_i]
   return numberAsString
  else
    return "[[[[[[Your number is out of range]]]]]"
  end
end


puts centerText("==> Welcome to Translator numbers <==", sizeScreen)
puts leftText("Please write the number in integers:", sizeScreen)
number = gets.chomp
puts number + " is spelling like: "+ translatorNumber(number)

#1 = uno
