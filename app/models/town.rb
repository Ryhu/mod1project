

class Town < ActiveRecord::Base

  def drop(player)
      npca = Npc.new("Jack", "Here's a sword!", 1)
      npcb = Npc.new("Jill", "Here's some armor!", 2)
      npcc = Npc.new("Hill", "Here's some boots!", 3)
      npc_arr = [npca,npcb,npcc]
      @npcs = npc_arr
    @player = player
    @name = self.name
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
    options = ["Inn", "Shop", "Town Square", "Trading Post", "Status", "Items", "Leave"]
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
    when "Status"
      status
    when "Items"
      items
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
          if el.value != nil
            event(el)
          end
          town_square_options
        end
      end
    else
      narrate("You leave the town square.")
      here
    end
  end

  def trading_post
    narrate("it's closed.")
    here
  end

  def leave
    narrate("You leave the town, and continue on your adventure")
    #find where the town exits to, find the object, and drop the player in
    a = Location.find_by(name: self.exit_name)
    narrate("You arrive at the #{a.name}")
    @player.save
    @player.save_equip
    a.drop(@player)
  end

  def event(npc)
    a = Item.find(npc.value)
    @player.items << a
    narrate( "You recieved a #{a.name}!")
    binding.pry
  end

  def status
    narrate("#{@player.name} has #{@player.hp} hp, #{@player.attack} attack, and #{@player.defence} defence")
    str = ""
    a = @player.equipment.map do |el|
      el.name
    end
    b = a.join(", ")
    narrate("#{@player.name} has the following items equipped: #{b}")
    here
  end

  def items
    answer = @prompt.select("Items Menu", %w(Equip_item Look_item), cycle:true, per_page:4)
    if answer == 'Equip_item'
      #list inventory
      stuff = @player.items.map do |el|
        el.name
      end
      #select an item from inventory
      answer = @prompt.select("Items Menu", stuff, cycle:true, per_page:4)
      #find that item again
      to_eq = @player.items.find do |el|
        el.name == answer
      end
      binding.pry
      #equip that item
      @player.equip(to_eq)
      narrate( "You have equipped the #{to_eq.name}!")
      town_options
    end
  end

  #what do you do in Town
  #inn, heal
  #shop, buy stuff
  #town_square, talk with guys
  #trading post, trade with players
end
