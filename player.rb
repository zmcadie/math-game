######   players   ######
# defines player name   #
# records player score  #

class Player

  def initialize(name)
    @name = name
    @score = 3
  end

  attr_accessor :name, :score

end