require "./app/models/location"
require "./app/models/player"
require "./app/models/enemy"
require 'tty-prompt'
require "pry"
class Fight

  def narrate(string)
    puts
    puts string
    puts
    STDIN.getch
  end

  def initialize(player=Player.new("bob", 5,4,3), enemy=Enemy.last)
    @player = player
    @enemy = enemy
    @prompt = TTY::Prompt.new(active_color: :cyan)
    @battle_end = false
    @enemy.hp = @enemy.max_hp
  end

  def now
    #if battle continues, do stuff.
    if !@battle_end
      puts ("You are fighting a #{@enemy.name}")
      puts
      answer = @prompt.select("Choose your destiny?", %w(Attack Heal Run), cycle:true)
      combat(answer)
    #messages for end of battles
    else
      if @player.hp <= 0
        narrate("YOU DEAD.")
        return false
      elsif @enemy.hp <= 0
        puts 'Victory!'
        puts "u get loot and stuff"
        return true
      else
        puts 'You ran away!'
        return true
      end

    end
  end


  def combat(choice)
    if choice == "Attack"
      damage = dmg_calc(@player, @enemy, 0)
      puts
      narrate("#{@enemy.name} took #{damage} damage!")
      puts
    elsif choice == "Heal"
      dmg_changer(@player, -4)
      puts
      narrate("You healed 4 damage!")
      puts
    else
      narrate("You attempt to run away!")
      if (rand(0..1) == 1)
        @battle_end = true
      else
        narrate("...but the enemy stopped you!")
      end
    end
    enemy_turn
  end

  def run_roll
    if rand(0..10) > 3
      @battle_end = true
      @run = true
    end
  end

  def dmg_calc(a,b,dmg=0)
    #calculates damage, whether the input be player or enemy attack. ALL it does is calculat dmg to be done
    #returns damage done.
    if dmg == 0
      dmg = a.attack - b.defence
    else
      dmg = dmg - b.defence
    end

    if dmg < 0
      dmg = 0
    end
    dmg_changer(b,dmg)
    dmg
  end

  def dmg_changer(character, dmg)
    # take the calculated damage, and works it. also can heal.  ends fights if hp =< 0.
    character.hp -= dmg
    if character.hp > character.max_hp
      character.hp = character.max_hp
    end
    if character.hp <= 0
      @battle_end = true
    end
  end

  #enemy turn
  def enemy_turn
    #first, sets the possible attacks, then roll one random attack from all the attacks, and execute
    #battle_end checks to see if battle ended, to skip combat and go to victory/defeat messages

    #battle_end is not needed for player turn, because combat ends either at the end of player turn, or end
    #of monster turn. because messages are done afterthe turns, player turn will not start if conditions met.
    if !@battle_end
      attacks =  [["scratch", 1], ["bite", 3]]
      roll = rand(0...attacks.length)
      attack = attacks[roll]

      damage = dmg_calc(@enemy,@player, attack[1])
      narrate("the #{@enemy.name} attacks you with #{attack[0]} for #{damage} damage!")
      puts("You now have #{@player.hp}hp.")
      puts("the #{@enemy.name} has #{@enemy.hp} hp.")
    end
    now
  end


end
