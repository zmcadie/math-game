######   players   ######
# defines player name   #
# records player score  #

module MathGame
  class Player

    attr_reader :name, :score

    def initialize(name)
      @name = name
      @score = 3
    end

    def lose_point
      @score -= 1
    end

  end
end