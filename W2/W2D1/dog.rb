class Dog
  def initialize(name, bark)
    @name = name
    @bark = bark
  end

  def self.whos_louder(dog_1, dog_2)
    # p self
    if dog_1.bark.length > dog_2.bark.length
      return dog_1.name
    elsif dog_1.bark.length < dog_2.bark.length
      return dog_2.name
    else
      return nil
    end
  end

  def name
    # p self 
    @name
  end

  def bark
    @bark
  end

  def change_name(new_name)
    @name = new_name
  end

end


d1 = Dog.new("Fido", "woof")

# p d1
# d2 = Dog.new("Doge", "much bork")
# # p Dog.whos_louder(d1, d2) # "Doge"

p Dog.change_name("Sparky")
