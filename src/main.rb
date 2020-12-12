require_relative 'Characters/Enemy'
require_relative 'Characters/Player'

miguel = Player.new('Miguel', 20, 120, 1.3, 50)
goblin = Enemy.new('Goblin', 10, 100, 1.1, 50)

miguel.show
goblin.show

puts miguel.attack
puts goblin.attack