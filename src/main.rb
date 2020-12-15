require_relative 'Characters/Player'
require_relative 'Game/Loop'
require_relative 'Dashboard/Dashboard'

miguel = Player.new('Miguel', 20, 120, 1.3, 50)
logic = Loop.new(miguel)
dashboard = Dashboard.new
dashboard.DashboardPlayer
dashboard.DashboardEnemy
logic.logic