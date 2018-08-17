#ejercicio 2
module Formula
  def perimetro
    "Soy el perimetro #{base * 2 + altura * 2}"
  end

  def area
    if self.class == Rectangulo
      puts "soy un Rectangulo del area =  #{ base * altura}"
    elsif self.class == Cuadrado
      puts " soy un Cuadrado de area = #{lado ** 2}"
    end
  end

  def area_perimetro
    puts perimetro
    puts area
  end
end

class Rectangulo
  attr_reader :base, :altura
  include Formula
  def initialize(base, altura)
    @base = base
    @altura = altura
  end

  def lados
    "madida de los lados #{@base} y #{@altura}"
  end
end

class Cuadrado
  attr_reader :lado
  include Formula
  def initialize(lado)
    @lado = lado
  end

  def lados
    "madida de los lados #{@base} y #{@altura}"
  end
end


l = Rectangulo.new(10, 10)
puts l.lados

a = Rectangulo.new(10, 10)
puts a.area

c = Cuadrado.new(8)
puts c.area


l.area_perimetro