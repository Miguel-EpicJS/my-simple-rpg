require_relative 'Characters'

class Enemy < Characters
    def attack()
        return @str * @speed
    end
end