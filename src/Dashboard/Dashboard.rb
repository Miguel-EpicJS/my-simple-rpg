require_relative '../Characters/Player'
require_relative '../Characters/Enemy'


class Dashboard
    def DashboardPlayer
        @cmd = 0
        @players = []
        while true
            puts "Type 1 for exit and 2 for create a new player"
            @cmd = gets.chomp.to_i
            if @cmd == 1
                break
            elsif @cmd == 2
                print "Type the name of the new player: "
                @pname = gets.chomp
                puts ""
                print "Type the str of the new player: "
                @pstr = gets.chomp.to_i
                puts ""
                print "Type the hp of the new player: "
                @php = gets.chomp.to_i
                puts ""
                print "Type the speed of the new player: "
                @pspeed = gets.chomp.to_i
                puts ""
                print "Type the gold of the new player: "
                @pgold = gets.chomp.to_i
                puts ""
                @player = Player.new(@pname, @pstr, @php, @pspeed, @pgold)
                @players.append(@player)
            end
        end
        return @players
    end
    def DashboardEnemy
        @enemies = []
        @cmd = 0
        while true
            puts "Type 1 for exit and 2 for create a new enemy"
            @cmd = gets.chomp.to_i
            if @cmd == 1
                break
            elsif @cmd == 2
                print "Type the name of the new enemy: "
                @ename = gets.chomp
                puts ""
                print "Type the str of the new enemy: "
                @estr = gets.chomp.to_i
                puts ""
                print "Type the hp of the new enemy: "
                @ehp = gets.chomp.to_i
                puts ""
                print "Type the speed of the new enemy: "
                @espeed = gets.chomp.to_i
                puts ""
                print "Type the gold of the new enemy: "
                @egold = gets.chomp.to_i
                puts ""
                @enemy = Enemy.new(@ename, @estr, @ehp, @espeed, @egold)
                @enemies.append(@enemy)
            end
        end 
        @enemies
    end
end
