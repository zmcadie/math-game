#######    turn    #######
##  defines question    ##
##  checks answer       ##
##  alters player score ##
##  alters game turn    ##

class Turn

  def initialize(player)
    @player = player
  end

  def question
    print "#{@player}: "
    answer = Question.new.ask
    if answer
      puts '** Happy Buzzer Noise™ **'
      true
    elsif !answer
      puts '** Angry Buzzer Noise™ **'
      false
    else
      puts 'Uh oh! Something went wrong'
    end
  end

end