def logic(player)
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
  end
end