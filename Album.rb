class Album
  @name
  @title
  @year
  @tracklist

  attr_accessor :name
  attr_accessor :title
  attr_accessor :year
  attr_accessor :tracklist

  def ask_for_artist
    puts "What's the name of the artist?"
    input=gets.chomp
    @name=input
  end

  def ask_for_title
    puts "What's the title of the album?"
    input=gets.chomp
    @title=input
  end

  def ask_for_year
    puts "What's the year the album was released?"
    input=gets.to_i
    @year=input
  end

  def ask_for_tracks
    puts "Please input a track name and then hit enter."
    print "Once you're finished please enter 'quit'\n"
    input=""
    count=2
    print "1: "

    until input=="quit"
      input=gets.chomp
      if input!="quit"
        @tracklist<<input
        print count.to_s + ": "
        input=gets.chomp
        count+=1
      end
    end
  end

  def get_songs(array_of_songs)
    @tracklist=array_of_songs
  end

  def print_info
    result = "\n#{@name} - ""#{@title}"" - #{@year}"
    @tracklist.each do |track|
      count=0
      count+=1
      result += "\n\t" + count.to_s + ": #{track.name} - #{track.duration}"
    end
    result
  end

  def set_album(name, title, year, tracks)
    @name=name
    @title=title
    @year=year
    @tracklist=tracks
  end

  def initialize
    @tracklist=[]
  end
end
