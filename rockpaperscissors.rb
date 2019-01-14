def game
  puts "Welcome to Rock, Paper, Scissors!"
  new_round = 'yes'
  until new_round == 'no'
    puts "Please make your move by typing rock, paper or scissors. Thank you!"

    computer_choice_options = ['rock', 'paper', 'scissors']
    one_computer_choice_options = computer_choice_options.length
    rand1 = rand(one_computer_choice_options)
    computer_choice = computer_choice_options[rand1]

    user_input = gets.chomp
    user_choice = user_input.downcase
    puts user_choice

      if (user_choice == 'rock') || (user_choice == 'paper') || (user_choice == 'scissors') # hier stimmt was nicht
        puts "Thank you for your choice!"
        puts user_choice
      else
        puts "Please only enter 'rock', 'paper' or 'scissors'. Thank you! You can choose again now:"
        user_input = gets.chomp
        user_choice = user_input.downcase
        puts user_choice
      end

    puts "The Computer chose #{computer_choice}."

    if (user_choice == computer_choice)
       puts "It\ 's a tie."
    elsif (user_choice == 'rock' && computer_choice == 'scissors')
      puts "Congrats! You won."
    elsif (user_choice == 'rock' && computer_choice == 'paper')
      puts "Sorry! You lost."
    elsif (user_choice == 'scissors' && computer_choice == 'paper')
      puts "Congrats! You won."
    elsif (user_choice == 'scissors' && computer_choice == 'rock')
      puts "Sorry! You lost."
    elsif (user_choice == 'paper' && computer_choice == 'rock')
      puts "Congrats. You won."
    elsif (user_choice == 'paper' && computer_choice == 'scissors')
      puts "Sorry! You lost."
    else
      puts "You must have given a wrong word. Could you choose from 'rock', 'paper' 'scissors' in the next round?"
    end
    puts "Do you like to play another round? Please type 'yes' or 'no'." # hier fehlt wenn was anderes eingegeben wird und eine abschiedsnachricht
    new_round = gets.chomp
    if (new_round == 'yes') || (new_round == 'no')
      puts "Thank you for the information!"
    else
      puts "Could you please state with 'yes' or 'no' if you would like to play another round?"
      new_round = gets.chomp
    end
  end
    puts "Good bye!"
end

game
