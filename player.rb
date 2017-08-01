######   players   ######
# defines player name   #
# records player score  #

module MathGame
  class Player

    attr_reader :name, :score

    def initialize
      print 'Enter your name: '
      @name = gets.chomp
      @score = 3
    end

    def lose_point
      @score -= 1
    end

  end
end