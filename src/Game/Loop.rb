require_relative '../Battle/Battle'
require_relative '../Characters/Enemy'
class Loop
    def initialize(player)
        @player = player
        #Make somethings here
        self.loop
    end
    def logic
        while true
            cmd = 0
            puts "What you want to do"
            puts "Type 1 to search an enemy"
            puts "Type 2 to recover health"
            puts "Type 3 to exit"
            cmd = gets.chomp.to_i
            if cmd == 1
                puts "Searching..."
                sleep(0.2)
                puts "Searching..."
                sleep(2)
                puts "We found a goblin!"
                goblin = Enemy.new('Goblin', 10, 100, 1.1, 50)
                battle = Battle.new
                @player, goblin = battle.battle(@player, goblin)
            elsif cmd == 2
                puts "Healing..."
                @player.hp += @player.healing
                sleep(2)
                puts "Your hp is #{@player.hp}"
            elsif cmd == 3
                puts "Exiting"
                break
            end
        end
        return @player
    end
end