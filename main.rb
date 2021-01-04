require './player'
require './question'

player1 = Player.new
player2 = Player.new

puts "\n\n*************************"
puts "Welcome to the Math Game!"
puts "*************************\n\n"
puts "Player 1 & Player 2 both have 3 lives."
puts "Answer a question incorrectly, and lose a life."
puts "If you lose all your lives, the game ends!\n\n"

puts "Ready?\n\n"


while player1.lives > 0 || player2.lives > 0 do

question = Question.new

print "Player 1: " 
puts question.question

print "Answer: "
answer = gets.chomp.to_i

  if question.answer(answer) == true
    puts "YES! You are correct."
  else
      puts "Player 1: Seriously? No!"
      player1.lives -= 1
  end

  if player1.lives == 0
    puts "Player 2 wins with a score of #{player2.lives}/3"
    puts "\n----- GAME OVER -----"
    puts "\nGoodbye!\n\n"
    break
  end

puts "\n\nP1: #{player1.lives}/3 vs P2: #{player2.lives}/3"
puts "----- NEW TURN -----\n\n"

question = Question.new

print "Player 2: " 
puts question.question

print "Answer: "
answer = gets.chomp.to_i

  if question.answer(answer) == true
    puts "YES! You are correct."
  else
      puts "Player 2: Seriously? No!"
      player2.lives -= 1
  end

  if player2.lives == 0
    puts "Player 1 wins with a score of #{player1.lives}/3"
    puts "\n----- GAME OVER -----"
    puts "\nGoodbye!\n\n"
    break
  end

puts "\n\nP1: #{player1.lives}/3 vs P2: #{player2.lives}/3"
puts "----- NEW TURN -----\n\n"

end