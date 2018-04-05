class BroadwayShows::Show
  attr_accessor :name, :price, :availability, :url

  def self.today
    self.scrape_shows
  end

  def self.scrape_shows
    shows = []

    shows << self.scrape_todaytix

    shows
  end

  def self.scrape_todaytix
    doc = Nokogiri::HTML(open("https://www.todaytix.com/x/nyc"))
    binding.pry
  end
end

# show_1 = self.new
# show_1.name = "The Boys in the Band"
# show_1.price = "from $89"
# show_1.availability = "available through 5/30"
# show_1.url = "https://www.todaytix.com/x/nyc"
#
# show_2 = self.new
# show_2.name = "Harry Potter and the Cursed Child"
# show_2.price = "from $40"
# show_2.availability = "available through lottery"
# show_2.url = "https://www.todaytix.com/x/nyc"
#
# show_3 = self.new
# show_3.name = "Waitress"
# show_3.price = "from $89"
# show_3.availability = "showing daily bar Monday"
# show_3.url = "https://www.todaytix.com/x/nyc"
#
# show_4 = self.new
# show_4.name = "Mean Girls"
# show_4.price = "from $99"
# show_4.availability = "available through 5/31"
# show_4.url = "https://www.todaytix.com/x/nyc"
#
# show_5 = self.new
# show_5.name = "Harry Clarke"
# show_5.price = "from $59"
# show_5.availability = "showing daily bar Monday"
# show_5.url = "https://www.todaytix.com/x/nyc"
#
# show_6 = self.new
# show_6.name = "The Play That Goes Wrong"
# show_6.price = "from $30"
# show_6.availability = "showing daily bar Monday and Wednesday"
# show_6.url = "https://www.todaytix.com/x/nyc"
#
# show_7 = self.new
# show_7.name = "The Band's Visit"
# show_7.price = "from $49"
# show_7.availability = "showing daily bar Monday"
# show_7.url = "https://www.todaytix.com/x/nyc"
#
# show_8 = self.new
# show_8.name = "Bernadetter Peters in Hello, Dolly"
# show_8.price = "from $39"
# show_8.availability = "available through 5/13"
# show_8.url = "https://www.todaytix.com/x/nyc"
#
# show_9 = self.new
# show_9.name = "Angels in America: Millenium Approaches"
# show_9.price = "from $50"
# show_9.availability = "available through 5/31"
# show_9.url = "https://www.todaytix.com/x/nyc"
#
# [show_1, show_2, show_3, show_4, show_5, show_6, show_7, show_8, show_9]
