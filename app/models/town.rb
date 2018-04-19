

class Town

  def initialize
    npca = Npc.new("Jack", "Hi there buddy")
    npcb = Npc.new("Jill", "guna get some water")
    npcc = Npc.new("Hill", "Fear me.")
    npc_arr = [npca,npcb,npcc]
    @npcs = npc_arr
  end

  def drop(player)
    @player = player
    @name = "Hogwarts"
    @prompt = TTY::Prompt.new(active_color: :cyan)
    here
  end

  def narrate(string)
    puts
    puts string
    puts
    STDIN.getch
  end

  def here
    narrate("You are in the town of #{@name}")
    town_options
  end

  def town_options
    options = ["Inn", "Shop", "Town Square", "Trading Post", "Leave"]
    answer = @prompt.select("Where will you go?", options, cycle:true, per_page:4)
    case answer
    when "Inn"
      inn
    when "Shop"
      shop
    when "Town Square"
      town_square
    when "Trading Post"
      trading_post
    when "Leave"
      leave
    end
  end

  def inn
    narrate("Welcome to the Inn!")
    answer = @prompt.select("Will you stay the night?", %w(Yes No), cycle:true, per_page:4)
    if answer == 'Yes'
      #implement payment here
      @player.hp = @player.max_hp
      narrate("You sleep through the night")
      puts "You wake up fully refreshed!"
      puts "HP fully restored!"
    else
      narrate("You decline, and continue on your way")
    end
      narrate("You leave the Inn")
      here
  end

  def shop
    # puts "Welcome to the Shop!"
    #money stuff, work in progress
    narrate("it's closed.")
    here
  end

  def town_square
    narrate("You walk to the town square")
    town_square_options
  end

  def town_square_options
    names = @npcs.map do |el|
      el.name
    end
    names << "Exit"
    answer = @prompt.select("Who will you talk to?", names, cycle:true, per_page:4)
    if answer != "Exit"
      @npcs.each do |el|
        if answer == el.name
          narrate( '"'+el.message+'"')
          town_square_options
        end
      end
    else
      narrate("You leave the town square.")
      here
    end
  end

  def leave
    narrate("You leave the town, and continue on your adventure")
    Location.first.drop(@player)
  end

  def trading_post
    narrate("it's closed.")
    here
  end



  #what do you do in Town
  #inn, heal
  #shop, buy stuff
  #town_square, talk with guys
  #trading post, trade with players
end
