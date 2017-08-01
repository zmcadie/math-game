require './player.rb'
require './question.rb'
require './turn.rb'
require './game.rb'

print 'Player One, enter your name: '
player_one = gets.chomp
puts
print 'Player Two, enter your name: '
player_two = gets.chomp
puts

MathGame::Game.new(player_one, player_two).begin_game