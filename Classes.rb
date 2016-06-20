require './Album'
class Song
  @duration
  @name
  @minutes
  @seconds

  attr_accessor :duration
  attr_accessor :name

  def get_duration
    puts "What is the duration of the song?"
    print "Minutes: "
    min=gets.to_i
    print "Seconds: "
    sec=gets.to_i
    while sec>60
      sec-=60
      min+=1
    end
    @minutes=min
    @seconds=sec
    @duration=min.to_s + ":" + sec.to_s
  end

  def get_name
    puts "What's the song name?"
    @name=gets.chomp
  end

  def print_song
    puts "#{@name} - #{@duration}"
  end

end

song_array=[]
trial_album=Album.new
trial_album.ask_for_artist
trial_album.ask_for_title
trial_album.ask_for_year

puts "How many songs would you like to add?"
n=gets.to_i

(0..n-1).each do |i|
  song=Song.new
  song.get_name
  song.get_duration
  song_array<<song
end

trial_album.get_songs(song_array)

puts trial_album.print_info


# class Users
#   @first_name
#   @last_name
#   @ID_Number
#
#   attr_accessor :first_name
#   attr_accessor :last_name
#   attr_accessor :ID_Number
#
#   def full_name(first, last)
#     full_name=first+last
#   end
#
#   def group_color(ID_num)
#     if ID_num>20
#       group_color="Blue"
#     elsif ID_num>10
#       group_color="Red"
#     elsif ID_num>0
#       group_color="Yellow"
#     else
#       group_color="Not a valid ID Number"
#     end
#   end
#
#   def initialize
#     @ID_Number=0
#   end
# end
#
# test=Users.new
