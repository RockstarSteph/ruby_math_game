
class Player

  #attr
  attr_accessor :hp, :p_score


  def initialize name
    @name = name
    @hp = 3
    @p_score = 0
  end
end