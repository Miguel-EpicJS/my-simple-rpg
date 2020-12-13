class Loop
    def initialize(player)
        @player = player
        #Make somethings here
        self.loop
    end
    def loop
        cmd = 0
        puts "What you want to do"
        puts "Type 1 to search an enemy"
        puts "Type 2 to recover health"
        puts "Type 3 to exit"
        cmd = gets.chomp.to_i
        if cmd == 1
            puts "Searching..."
            self.loop
        elsif cmd == 2
            puts "Healing..."
            self.loop
        elsif cmd == 3
            puts "Exiting"
        end
    end
end