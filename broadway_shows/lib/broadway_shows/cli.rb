class BroadwayShows::CLI

  def call
    list_shows
    menu
  end

  def list_shows
    puts "Today's Broadway Shows"
    BroadwayShows::Show.get_shows
    BroadwayShows::Show.all.each_with_index do |show, i|
      puts "#{i + 1}. #{show.name}"
    end
  end

  def menu
    input = nil
    while input != "exit"
      puts "Enter the number of the show you would like to learn more about or type 'list' to see all of the shows on or offer type 'exit' to quit."
      input = gets.strip.downcase

      if input.to_i > 0 && input.to_i <= 9
        the_show = BroadwayShows::Show.all[input.to_i-1]
        puts "#{input}. #{the_show.name}"
        sleep 1
        puts "#{the_show.blurb}"
      elsif input == "list"
        BroadwayShows::Show.all.each_with_index do |show, i|
          puts "#{i + 1}. #{show.name}"
        end
      elsif input == "exit"
        puts "Thanks for coming, please check back in soon!"
      else
        puts "Not sure what you want, please type 'list' or 'exit'."
      end
    end
  end
end
