class Player < ActiveRecord::Base
  has_many :player_skills
  has_many :skills, through: :player_skills

  has_many :inventories
  has_many :items, through: :inventories

  attr_accessor :name, :hp, :attack, :defence, :max_hp, :items

    def initialize(name, hp, attack, defence)
      @inventory = Inventory.new(self)
      @name = name
      @hp = hp
      @max_hp = hp
      @attack = attack
      @defence = defence
    end
end
