#######    turn    #######
##  defines question    ##
##  checks answer       ##
##  alters player score ##
##  alters game turn    ##

module MathGame
  class Turn

    attr_reader :result

    def initialize
      @result = false
      self.question
    end

    def question
      question = MathGame::Question.new
      if question.answer
        puts '** Happy Buzzer Noise™ **'
        @result = true
      else
        puts '** Angry Buzzer Noise™ **'
      end
    end

  end
end