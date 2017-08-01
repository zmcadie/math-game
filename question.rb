#####  question  #####
# generates question #
# checks answer      #

module MathGame
  class Question

    def initialize
      @int_one = rand(20) + 1
      @int_two = rand(20) + 1
    end

    def ask
      puts "What is #{@int_one} plus #{@int_two}?"
      answer = gets.chomp.to_i
      if answer == @int_one + @int_two
        true
      else
        false
      end
    end

  end
end