puts "What is your email address?"
email = gets

if email['@'] and email['.']
  puts "[[[Your email is valid]]"
else
  puts "->You email is wrong<-"
end


cmd = ''

while cmd !=  'bye'
  puts "write some command"
  command = gets.chomp
  cmd  = command
end
