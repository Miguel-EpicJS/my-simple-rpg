class Dice
    def generate(faces)
        num = Random.new 
        return num.rand(faces)
    end
end