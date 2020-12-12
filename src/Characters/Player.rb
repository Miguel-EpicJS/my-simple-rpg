require_relative 'Characters'

class Player < Characters
    def attack()
        return @str * @speed
    end
end