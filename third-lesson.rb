puts "What is your email address?"
email = gets

if email['@']
  puts "[[[Your email is valid]]"
else
  puts "->You email is wrong<-"
end
