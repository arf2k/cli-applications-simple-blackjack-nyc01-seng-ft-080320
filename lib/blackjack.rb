def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(num)
  card_total = num 
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp 
end

def end_game(card_total)
 puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  first_round = deal_card + deal_card  
  display_card_total(first_round)
  return first_round
end

def hit?(current_total)
  prompt_user 
  user_input = get_user_input 
  current_total
  
  if user_input == "h"
    deal_card + current_total
  elsif user_input == "s"
    current_total
  else
    invalid_command
  end
end
 

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
end
    
