require 'pry'
songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

  def help
    puts "I accept the following commands:"
    puts "help : displays this help message"
    puts "list : displays a list of songs you can play"
    puts "play : lets you choose a song to play"
    puts "exit : exits this program"
  end

  def list(songs)
    songs.each.with_index(1) do |element, index|
      puts "#{index}. #{element}"
    end
  end

def play(songs)

  #puts "Please enter a song name or number:"
  #choice = gets.chomp
#   if [*1..12].include?(choice.to_i)
#     puts "Playing #{songs[choice.to_i - 1]}"
#   elsif songs.include?(choice)
#     puts "Playing #{choice}"
#   else
#     puts "Invalid input, please try again"
#   end
# end
# def play(songs)
  puts "Please enter a song name or number:"
  choice = gets.chomp
  title =[]
  title = songs.select.with_index(1) do |element, index|
    if choice.to_i == index
      puts "Playing #{element}"
    elsif choice == element
      puts "Playing #{element}"
    end
  end
  if title.length == 0
     puts "Invalid input, please try again"
   end
 end


def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  input = gets.chomp

  if input == "exit"
    return exit_jukebox
  end

   case input
      when "help"
        help
      when "list"
        list(songs)
      else "play"
       play(songs)
  end
  run(songs)
end
run(songs)
