def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  1 + rand(11)
end

def display_card_total(deal_card)
  deal_card = deal_card
  puts "Your cards add up to #{deal_card}"
end

def prompt_user
    puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
	  awnser = gets.chomp
	 awnser == "s" || awnser == "h"
	 return awnser
  end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  n = deal_card + deal_card
  puts "Your cards add up to #{n}"
  return n
end

def hit?(card_total)
  prompt_user
  user_input = get_user_input 
  if user_input == "h"
    card_total += deal_card 
  elsif user_input == "s"
    card_total 
  else
    invalid_command
  end
end
  
  
def invalid_command
  puts "Please enter a valid command"
  prompt_user
  get_user_input
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  sum = initial_round
  until sum > 21 
    sum = hit?(sum)
    display_card_total(sum)
  end
  end_game(sum)
end
    
