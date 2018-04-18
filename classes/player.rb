require "./classes/character.rb"

class Player
  attr_accessor :name, :hp, :attack, :defence, :max_hp, :items

    def initialize(name, hp, attack, defence)
      @name = name
      @hp = hp
      @max_hp = hp
      @attack = attack
      @defence = defence
    end
end
