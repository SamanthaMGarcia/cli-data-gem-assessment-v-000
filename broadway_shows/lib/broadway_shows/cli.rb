class BroadwayShows::CLI

  def call
    puts "Today's Broadway Shows"
    list_shows
  end

  def list_shows
    puts <<-DOC.gsub /^\s*/, ''
    1. The Boys in the Band - from $89 - available through 5/30
    2. Harry Potter and the Cursed Child - from $40 - available through lottery
    3. Waitress - from $89 - showing daily bar Monday
    4. Mean Girls - from $99 - available through 5/31
    5. Harry Clarke - from $59 - showing daily bar Monday
    6. The Play That Goes Wrong - from $30 - showing daily bar Monday and Wednesday
    7. The Band's Visit - from $49 - showing daily bar Monday
    8. Bernadetter Peters in Hello, Dolly - from $39 - available 5/13
    9. Angels in America: Millenium Approaches - from $50 - available through 5/31
    DOC
  end

end
