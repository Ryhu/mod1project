require 'tty-prompt'
require './classes/player.rb'
require './classes/enemy.rb'
require './classes/fight.rb'

class Location

  def narrate(string)
    puts
    puts string
    puts
    STDIN.getch
  end

  def initialize(player=Player.new("bob", 30,5,0), location = "forest")
    @player = player
    @location = location
    @prompt = TTY::Prompt.new(active_color: :cyan)
    # size
    #map has variable size, can be set on initiaite, OR can be set statically beforehand
    @location_progress = 1
  end

  #this is where you are, just prints your current location, links to options
  def here

    puts ("you are currently in the #{@location}")

    actions
  end

  #what u can do at a location, status gives u your Status
  def actions
    answer = @prompt.select("Where will you go?", %w(Foward Back Status), cycle:true)
    if answer == "Foward"

      narrate("you continue foward")


      encounter_check
    elsif answer == "Back"

      narrate("you retreat backwards")

      encounter_check
    else

      narrate("#{@player.name} has #{@player.hp} hp.")

      here
    end
  end

  #roll for monster apearances
  def encounter_check
    if (rand(0..1) == 1)
      random_encounter
    else
      here
    end
  end

  #handles the monster encounter if u get one
  def random_encounter
    narrate("an enemy appears!")
    a = Fight.new(@player)
    if a.now
      here
    end
  end


end
