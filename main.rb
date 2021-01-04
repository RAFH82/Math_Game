require './player'
require './question'
require './helpers'

puts "\n\n*************************"
puts "Welcome to the Math Game!"
puts "*************************\n\n"
puts "Player 1 & Player 2 both have 3 lives."
puts "Answer a question incorrectly, and lose a life."
puts "If you lose all your lives, the game ends!\n\n"

puts "Ready?\n\n"

player1 = Player.new
player2 = Player.new

while player1.lives > 0 && player2.lives > 0 do

logic(player1, player2, 1)

logic(player1, player2, 2)

end

puts "\n----- GAME OVER -----"
puts "\nGoodbye!\n\n"