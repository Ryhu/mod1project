
class Npc
  attr_accessor :name, :message, :value

  def initialize(name, message, value = nil)
    @name = name
    @message = message
    @value = value
  end


end
