class Integer
  def to_spanish
    if self == 5
      esp = 'cinco'
    else
      esp = 'ciencuenta'
    end
    esp
  end
end

puts 5.to_spanish


class Dado

  def initialize
    roll
  end
  def roll
    @number = 1 + rand(6)
  end

  def show
    @number
  end
end

dados = [Dado.new.show, Dado.new.show, Dado.new.show]

dados.each do |dado|
    puts "running dado..."
    puts ".........."
    puts dado
end
