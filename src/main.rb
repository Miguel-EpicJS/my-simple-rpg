require_relative 'Characters/Enemy'
require_relative 'Characters/Player'
require_relative 'Battle/Battle'

miguel = Player.new('Miguel', 20, 120, 1.3, 50)
goblin = Enemy.new('Goblin', 10, 100, 1.1, 50)
battle = Battle.new

miguel, goblin = battle.battle(miguel, goblin)