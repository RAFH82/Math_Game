def logic(player1, player2, num) # player1, player2, active player

  # Set the player 
  player = num == 1 ? player1 : player2

  # Check to see if a player has lost
  if player1.lives == 0 || player2.lives == 0
    puts "Player #{num == 1 ? 1 : 2} wins with a score of #{player == player1 ? player1.lives : player2.lives}/3"
    return
  end

  # Generate a new question
  question = Question.new 

  # Ask the active player a question
  print "Player #{num}: " 
  puts question.question

  # Get the players answer
  print "Answer: "
  answer = gets.chomp.to_i

  # Logic handling
  if question.answer(answer) == true
    puts "YES! You are correct."
  else
    puts "Player #{num}: Seriously? No!"
    player.lives -= 1
  end

  puts "\nP1: #{player1.lives}/3 vs P2: #{player2.lives}/3"
  puts "----- NEW TURN -----\n\n"
  
  return
end