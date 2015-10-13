# Get My Number Game
# Written by: me

puts "Welcome to 'Get my number'!"
print "What's your name? "
input = gets
name = input.chomp
print "Welcome #{name}!\n"

puts "I've got a random number between 1 and 100"
puts "Can you guess it?"
target = rand(100) + 1

# Track how many guesses the player has made
num_guesses = 0
guessed_it = false

until num_guesses == 10 || guessed_it
  puts "You've got #{10 - num_guesses} guesses left"

  print "Make a guess: "
  guess = gets.to_i

  if guess < target
    puts "Your guess is lower"
  elsif guess > target
    puts "Your guess is higher"
  else
    puts "Congratulations! You guessed the number"
    guessed_it = true
  end

  num_guesses += 1
end

puts "Sorry, you didn't get my number. It was #{target}" unless guessed_it
