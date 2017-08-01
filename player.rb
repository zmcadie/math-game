######   players   ######
# defines player name   #
# records player score  #

module MathGame
  class Player

    def initialize(name)
      @name = name
      @score = 3
    end

    attr_accessor :name, :score

  end
end