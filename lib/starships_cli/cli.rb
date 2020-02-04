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
      puts "starships"
      elsif input == "exit"
      puts "exit"
    else
      puts "invalid entry,try again."
      menu 
    end
  end
end