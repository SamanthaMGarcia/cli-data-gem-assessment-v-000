class BroadwayShows::CLI

  def call
    list_shows
    menu
    goodbye
  end

  def list_shows
    puts "Today's Broadway Shows"
    @shows = BroadwayShows::Show.today
    @shows.each.with_index(1) do |show, i|
      puts "#{i}. #{show.name}"
    end
  end

  def menu
    input = nil
    while input != "exit"
      puts "Enter the number of the show you would like to learn more about or type list to see all of the shows on or offer type exit."
      input = gets.strip.downcase

      if input.to_i > 0
        the_show = @shows[input.to_i-1]
        puts "#{i}. #{the_show.name} - #{the_show.blurb}"
      elsif input == "list"
        list_shows
      else
        puts "Not sure what you want, please type list or exit."
    end
  end
end

  def goodbye
    puts "Check back in soon to see more about the best shows in town!"
    end
  end
