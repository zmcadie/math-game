#########    game    #########
##  defines players, turns  ##
##  records current player  ##

module MathGame
  class Game

    def initialize
      print 'Player One, enter your name: '
      name = gets.chomp
      @player_one = MathGame::Player.new(name)
      print 'Player Two, enter your name: '
      name = gets.chomp
      @player_two = MathGame::Player.new(name)
      self.begin_game
    end

    def begin_game
      while @player_one.score > 0 && @player_two.score > 0
        print "#{@player_one.name}: "
        turn_one = MathGame::Turn.new
        print "#{@player_two.name}: "
        turn_two = MathGame::Turn.new
        if !turn_one.result
          @player_one.lose_point
        end
        if !turn_two.result
          @player_two.lose_point
        end
        print "Score: "
        puts "#{@player_one.name} - #{@player_one.score}/3"
        print "       "
        puts "#{@player_two.name} - #{@player_two.score}/3"
      end
      puts "Game Over!"
    end

  end
end