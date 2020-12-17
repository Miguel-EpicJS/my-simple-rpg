require_relative 'Characters/Player'
require_relative 'Game/Loop'
require_relative 'Dashboard/Dashboard'

miguel = Player.new('Miguel', 20, 120, 1.3, 5000, 1)
dashboard = Dashboard.new
enemies = dashboard.DashboardEnemy
logic = Loop.new(miguel, enemies)
logic.logic