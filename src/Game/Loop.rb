require_relative '../Battle/Battle'
require_relative '../Characters/Enemy'
require_relative './Store'

class Loop
    def initialize(player, enemies)
        @enemies = enemies
        @player = player
        @store = Store.new
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
            puts "Type 4 to open shop"
            puts "Type 5 show your stats"
            cmd = gets.chomp.to_i
            if cmd == 1
                puts "Searching..."
                sleep(0.2)
                puts "Searching..."
                sleep(2)
                enemy = @enemies.sample
                puts "We found a #{enemy.name}!"
                battle = Battle.new
                @player, enemy = battle.battle(@player, enemy)
            elsif cmd == 2
                if @player.hp < @player.maxHp
                    puts "Healing..."
                    @player.hp += @player.healing
                    sleep(2)
                    puts "Your hp is #{@player.hp}"
                else
                    puts "You have the max health"
                end
            elsif cmd == 3
                puts "Exiting"
                break
            elsif cmd == 4
                @store.open(@player)
            elsif cmd == 5
                @player.show
            end
        end
        return @player
    end
end