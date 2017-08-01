#########    game    #########
##  defines players, turns  ##
##  records current player  ##

class Game

  def initialize(player_one, player_two)
    @player_one = Player.new(player_one)
    @player_two = Player.new(player_two)
  end

  def begin_game
    while @player_one.score > 0 && @player_two.score > 0
      answer_one = Turn.new(@player_one.name).question
      answer_two = Turn.new(@player_two.name).question
      if !answer_one
        @player_one.score -= 1
      end
      if !answer_two
        @player_two.score -= 1
      end
      print "Score: "
      puts "#{@player_one.name} - #{@player_one.score}/3"
      print "       "
      puts "#{@player_two.name} - #{@player_two.score}/3"
    end
    puts "Game Over!"
  end

end