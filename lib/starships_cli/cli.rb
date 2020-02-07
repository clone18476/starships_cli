class StarshipsCli::CLI 
  def call 
    puts "Welcome user!"
    puts "To see starships, enter 'starships'"
    puts "To exit the galaxy, enter 'exit'"
    API.get_data
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
    Starship.all.each_with_index do |starship,index|
      puts "#{index + 1}. #{starship.name}"
    end 
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