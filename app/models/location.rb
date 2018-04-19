require "pry"
require_all "app"

class Location < ActiveRecord::Base
  has_many :location_enemies
  has_many :enemies, through: :location_enemies

  attr_accessor :current, :location

  # def after_initialize
  #   # size
  #   #map has variable size, can be set on initiaite, OR can be set statically beforehand
  #   @location_progress = 1
  #   #@current_location = 0
  # end



  def narrate(string)
    puts
    puts string
    puts
    STDIN.getch
  end

  def drop(player)
  #add zone to player
  @zone_cur = 0
  @player = player
  @prompt = TTY::Prompt.new(active_color: :cyan)

  @enemy_list = LocationEnemy.where(location_id: self.id).map do |el|
    Enemy.find(el.enemy_id)
  end


  here
  end

  #this is where you are, just prints your current location, links to options
  def here
    if @zone_cur == 0
      narrate("you are currently at the #{self.name} entrance")
    elsif @zone_cur == 10
      narrate("you are currently at the #{self.name} exit!")
    else
      narrate("you are currently in the #{self.name}")
    end
    actions
  end

  #what u can do at a location, status gives u your Status
  def actions
    answer = @prompt.select("Where will you go?", %w(Foward Back Status Items), cycle:true, per_page:4)
    if answer == "Foward"
      if @zone_cur == 10
        narrate("you leave the #{self.name}")
        leave(self.exit_name)
      else
        @zone_cur += 1
        narrate("you continue foward")
        encounter_check
      end
    elsif answer == "Back"
      if @zone_cur == 0
        narrate("you leave the #{self.name}")
        leave(self.entrance_name)
      else
        @zone_cur -= 1
        narrate("you retreat backwards")
        encounter_check
      end
    else

      narrate("#{@player.name} has #{@player.hp} hp.")

      here
    end
  end

  #roll for monster apearances
  def encounter_check
    if (rand(0..0) == 1)
      random_encounter
    else
      here
    end
  end

  #handles the monster encounter if u get one
  def random_encounter
    narrate("an enemy appears!")
    a = Fight.new(@player, @enemy_list.sample)
    if a.now
      here
    end
  end

  #handles going into another area
  def leave(place)
    a = Town.find_by(name: place)
    narrate("You arrive at the #{a.name}")
    a.drop(@player)
  end



end
