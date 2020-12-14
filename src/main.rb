require_relative 'Characters/Player'
require_relative 'Game/Loop'

miguel = Player.new('Miguel', 20, 120, 1.3, 50)
logic = Loop.new(miguel)
logic.logic