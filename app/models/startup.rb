require_all "app"

class Startup

  def initialize
    @prompt = TTY::Prompt.new(active_color: :cyan)
  end

  def narrate(string)
    puts
    puts string
    puts
    STDIN.getch
  end

  def start
    answer = @prompt.select("Welcome to mod1proj!", %w(Continue New_Game), cycle:true)
    if answer == 'Continue'
      login = sign_in
      player = Player.find(login.player_id)
      town = Town.find_by(name: player.location)
      narrate("Welcome, #{player.name}!")
      narrate("You arrive in #{town.name}")
      town.drop(player)
    else
      puts
      a = sign_up
      create_character(a)
    end
  end

  def sign_in
    puts "Please type in your username"
    username = gets.chomp
    puts
    puts "Please type in your password"
    password = gets.chomp
    puts
    a = Login.find_by(username: username, password: password)
    if a == nil
      narrate("Could not log in with that username/password combo, returning to main menu.")
      start
    else
      a
    end
  end

  #character being dropped here
  def create_character(login)
    @name = set_name
    @class = set_class
    newb = Player.create(name: @name, hp: 30, max_hp: 30, attack:7, defence:2, location:"Skystead", money: 50)
    narrate("Welcome, #{@name} the #{@class}!")
    #drops player in starting location
    login.player_id = newb.id
    newb.save
    login.save
    Town.find_by(name: "Skystead").drop(newb)
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
    puts
    if answer == 'Yes'
      return true
    else
      return false
    end
  end

  def sign_up

    username = input_username
    puts "Please type in your password"
    password = gets.chomp
    puts
    narrate("you have successfully signed up!")
    puts
    puts
    Login.create(username: username, password: password, player_id: nil)

  end

  def input_username
    puts "Please type in your username"
    username = gets.chomp
    puts
    a = Login.find_by(username: username)
    if a != nil
      narrate("Username Invalid.")
      input_username
    else
      username
    end

  end

end
