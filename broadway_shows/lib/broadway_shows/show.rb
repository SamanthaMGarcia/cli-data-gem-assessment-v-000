class BroadwayShows::Show
  attr_accessor :name, :blurb

  def self.today
    self.getShows
  end

  def self.getShows
    doc = Nokogiri::HTML(open("https://www.todaytix.com/x/nyc"))
    titles = doc.search("div._2M6CitDx2A")

    titles.each do |title|
      show = self.new
      show.name = title.css("h2").text

      blurb_url = "https://www.todaytix.com#{ title.css('a')[0].attributes["href"].value }"
      blurb_doc = Nokogiri::HTML(open(blurb_url))
      show.blurb = blurb_doc.search("div.YXkXIt4pkN").text

    end
  end
end
