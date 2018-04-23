class BroadwayShows::Show
  attr_accessor :name, :blurb

  @@all = []

  def initialize(name)
    @name = name
    # @blurb = blurb
    @@all << self
  end
  # def initialize(name, blurb)
  #   @name = name
  #   @blurb = blurb
  #   @@all << self
  # end

  def self.get_shows

    doc = Nokogiri::HTML(open("https://www.todaytix.com/x/nyc"))
    titles = doc.search("div._2M6CitDx2A")

    everything = titles.each do |title|
      name = title.css("h2").text

      # blurb_url = "https://www.todaytix.com#{ title.css('a')[0].attributes["href"].value }"
      # blurb_doc = Nokogiri::HTML(open(blurb_url))
      # blurb = blurb_doc.search("div.YXkXIt4pkN").text

      show = self.new(name)
      # show = self.new(name, blurb)
    end
    self.all
  end

  def self.all
    @@all
  end
end
