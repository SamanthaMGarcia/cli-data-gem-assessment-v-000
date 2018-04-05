class BroadwayShows::CLI

  def call
    list_shows
    menu
    goodbye
  end

  def list_shows
    puts "Today's Broadway Shows"
    puts <<-DOC.gsub /^\s*/, ''
    1. The Boys in the Band - from $89 - available through 5/30
    2. Harry Potter and the Cursed Child - from $40 - available through lottery
    3. Waitress - from $89 - showing daily bar Monday
    4. Mean Girls - from $99 - available through 5/31
    5. Harry Clarke - from $59 - showing daily bar Monday
    6. The Play That Goes Wrong - from $30 - showing daily bar Monday and Wednesday
    7. The Band's Visit - from $49 - showing daily bar Monday
    8. Bernadetter Peters in Hello, Dolly - from $39 - available through 5/13
    9. Angels in America: Millenium Approaches - from $50 - available through 5/31
    DOC
    @shows = BroadwayShows::Show.today
  end

  def menu
    input = nil
    while input != "exit"
      puts "Enter the number of the show you would like to learn more about or type list to see all of the shows on or offer type exit."
      input = gets.strip.downcase
      case input
    when "1"
      puts "More info on show 1..."
    when "2"
      puts "More info on show 2..."
    when "3"
      puts "More info on show 3..."
    when "4"
      puts "More info on show 4..."
    when "5"
      puts "More info on show 5..."
    when "6"
      puts "More info on show 6..."
    when "7"
      puts "More info on show 7..."
    when "8"
      puts "More info on show 8..."
    when "9"
      puts "More info on show 9..."
    when "list"
      list_shows
    else
      puts "Not sure what you want, please type list or exit."
    end
  end
end

  def goodbye
    puts "Check back in soon to see more deals on the best shows in town!"
  end
end
