require_all "app"

class Startup

  def initialize
    @prompt = TTY::Prompt.new(active_color: :cyan)
  end

  def start
    answer = @prompt.select("Welcome to mod1proj!", %w(Continue New_Game), cycle:true)
    if answer == 'Continue'

    else
      create_character
    end
  end

  def create_character
    @name = set_name
    @class = set_class
    newb = Player.create(name: @name, hp: 30, max_hp: 30, attack:7, defence:2)
    puts "Welcome, #{@name} the #{@class}!"
    #drops player in starting location
    Location.last.drop(newb)
  end

  def set_name
    puts "what is your name?"
    name = gets.chomp
    if name == ""
      name = 'bob'
    end
    if !confirmation("Welcome, #{name}!")
      set_name
    else
      name
    end

  end

  def set_class
    prof = ["Warrior", "Knight", "Baker"]
    answer = @prompt.select("What is your profession?", prof, cycle:true)
    if !confirmation("Class: #{answer}")
      set_class
    else
      answer
    end
    # if answer == 'Warrior'
    #   return 'Warrior'
    # elsif answer == 'Knight'
    #   #start with shield
    # else
    #   #start with baker's hat
    # end
  end

  def confirmation(text)
    puts text
    answer = @prompt.select("is that correct?", %w(Yes No), cycle:true)
    if answer == 'Yes'
      return true
    else
      return false
    end
  end





end
