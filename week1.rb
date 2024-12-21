randomNumber = Random.rand(10)
puts "Please guess a random number between 0 and 10"
usersGuess = gets

while usersGuess.to_i != randomNumber.to_i
  puts "You guessed incorrectly with #{usersGuess}...please try again"
  usersGuess = gets
end

if usersGuess.to_i == randomNumber.to_i
  puts "You guessed Correctly!"
end
