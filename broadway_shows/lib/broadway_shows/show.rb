class BroadwayShows::Show
  attr_accessor :name, :blurb, :url

  def self.today
    self.scrape_shows
  end

  def self.scrape_shows
    shows = []

    shows << self.scrape_firstshow
    shows << self.scrape_secondshow
    shows << self.scrape_thirdshow
    shows << self.scrape_fourthshow
    shows << self.scrape_fifthshow
    shows << self.scrape_sixthshow
    shows << self.scrape_seventhshow
    shows << self.scrape_eighthshow
    shows << self.scrape_ninthshow

    shows
  end

  def self.scrape_firstshow
    doc = Nokogiri::HTML(open("https://www.todaytix.com/x/nyc/shows/392-school-of-rock"))

    show = self.new
    show.name = doc.search("h1._1ObTN67v78").text
    show.blurb = doc.search("div.YXkXIt4pkN").text

    show
  end

  def self.scrape_secondshow
    doc = Nokogiri::HTML(open("https://www.todaytix.com/x/nyc/shows/7318-the-bands-visit"))

    show = self.new
    show.name = doc.search("h1._1ObTN67v78").text
    show.blurb = doc.search("div.YXkXIt4pkN").text

    show
  end

  def self.scrape_thirdshow
    doc = Nokogiri::HTML(open("https://www.todaytix.com/x/nyc/shows/8728-harry-potter-and-the-cursed-child"))

    show = self.new
    show.name = doc.search("img._13fUdZ5A5X._3MQSZPDW8a._1rUNYHFkIY").text
    show.blurb = doc.search("div.YXkXIt4pkN").text

    show
  end

  def self.scrape_fourthshow
    doc = Nokogiri::HTML(open("https://www.todaytix.com/x/nyc/shows/1044-waitress"))

    show = self.new
    show.name = doc.search("h1._1ObTN67v78").text
    show.blurb = doc.search("div.YXkXIt4pkN").text

    show
  end

  def self.scrape_fifthshow
    doc = Nokogiri::HTML(open("https://www.todaytix.com/x/nyc/shows/7774-mean-girls"))

    show = self.new
    show.name = doc.search("h1._1ObTN67v78").text
    show.blurb = doc.search("div.YXkXIt4pkN").text

    show
  end

  def self.scrape_sixthshow
    doc = Nokogiri::HTML(open("https://www.todaytix.com/x/nyc/shows/9552-the-boys-in-the-band"))

    show = self.new
    show.name = doc.search("h1._1ObTN67v78").text
    show.blurb = doc.search("div.YXkXIt4pkN").text

    show
  end

  def self.scrape_seventhshow
    doc = Nokogiri::HTML(open("https://www.todaytix.com/x/nyc/shows/3868-bernadette-in-hello-dolly"))

    show = self.new
    show.name = doc.search("h1._1ObTN67v78").text
    show.blurb = doc.search("div.YXkXIt4pkN").text

    show
  end

  def self.scrape_eighthshow
    doc = Nokogiri::HTML(open("https://www.todaytix.com/x/nyc/shows/9145-saint-joan"))

    show = self.new
    show.name = doc.search("h1._1ObTN67v78").text
    show.blurb = doc.search("div.YXkXIt4pkN").text

    show
  end

  def self.scrape_ninthshow
    doc = Nokogiri::HTML(open("https://www.todaytix.com/x/nyc/shows/9249-harry-clarke"))

    show = self.new
    show.name = doc.search("h1._1ObTN67v78").text
    show.blurb = doc.search("div.YXkXIt4pkN").text

    show
  end

end
