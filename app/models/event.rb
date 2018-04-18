class Event
  attr_accessor :name, :intro, :selection, :yes, :no, :value
  def initialize(name, intro, selection, yes, no, type, value)
    #sample: ("lucky!", "you found a sword on the ground!", "pick up the sword?", "you leave the sword as is", "you pick up a sword!", "get", 5)
    @name = name
    @type = type
    @intro = intro
    @selection = selection
    @yes = yes
    @no = no
    @value = value
  end

  def happen(player)
    @player = player

    if @type == "hurt"
      hurt(@value)
    elsif @type == "heal"
      heal(@value)
    elsif @type == "get"
      get(@value)
    end
  end

  def hurt(value)
    @player.hp -= value
    if @player.hp < 0
      @player.hp = 1
    end
    puts "you take #{value} damage!"
  end

  def heal(value)
    @player.hp += value
    if @player.hp < @player.max_hp
      @player.hp = @player.max_hp
    end
    puts "you heal for #{value} points!"
  end

  def get(value)
    #find an item, put it into inventory, get the name
    puts "you picked up an"
  end

  #event types:
  #hurt, heal, get


end
