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
  def roll
    1 + rand(6)
  end
end

dados = [Dado.new, Dado.new, Dado.new]

dados.each do |dado|
  puts dado.roll
end
