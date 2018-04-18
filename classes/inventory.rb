require "./classes/item"

class Inventory
  def initialize(user)
    @user = user
    @inventory = []
    @equipment = []
  end

  def add(item)
    @inventory << item
  end

  def equip(item)
    @equipment << item
  end

end
