class StarshipsCli::CLI 
  def call 
    puts "Welcome user!"
    puts "To see starships, enter 'starships'"
    puts "To exit the galaxy, enter 'exit'"
    menu
  end 
  
  def menu
    input = gets.strip.downcase
    if input == "starships"
      starships_list
      menu
      elsif input == "exit"
      goodbye
    else
     invalid_entry
    end
  end
  def starships_list 
    puts "1. starship 1"
    puts "2. starship 2"
    puts "3. starship 3"
    puts ""
    puts ""
    puts "which starship would you like more detail about:"
    input = gets.strip.downcase
    starship_selection(input)
  end 
  def starship_selection(starship)
    puts "#{starship}"
    
  end 
  def goodbye 
    puts "bye, may the force be with you."
  end 
  def invalid_entry
    puts "invalid entry try again"
    menu
  end 
end