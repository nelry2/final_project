require 'colorize'
include Math

def factorial(num)
  x = 1
  while  num > 0
    x = x * (num)
    num -= 1
  end
  return x
end

def quad(a, b, c)
  ans1 = ((0-b)+((b**2)-(4*a*c))**0.5)/(2*a)
  ans2 = ((0-b)-((b**2)-(4*a*c))**0.5)/(2*a)
  return "The two roots of the equation #{a}x^2 + #{b}x + #{c} are\nx1 = #{ans1}\nx2 = #{ans2}:"
end

def pyth
  puts "|   Pythagorean Theorem   |".yellow
  puts "What is the first side?"
  side1 = gets.chomp.to_f
  puts "What is the second side?"
  side2 = gets.chomp.to_f
  puts "Are you missing a hypothenuse or a leg? (h or l)"
  missing = gets.chomp
  if missing == "h"
    return ((side1**2) + (side2**2))**0.5
  elsif (missing == "l") && (side1 > side2)
    return ((side1**2) - (side2**2))**0.5
  elsif (missing == "l") && !(side2 < side1)
    return ((side2**2) - (side1**1))**0.5
  else 
    return "Invalid inputs"
  end
end

def sine(deg)
  rad = (deg * 3.14159) / 180
  rad = ((sin(rad) *1000.0).round / 1000.0)
  return rad 
end
  
def cosi(deg)
  rad = (deg * 3.14159) / 180
  rad = ((cos(rad) *1000.0).round / 1000.0)
  return rad 
end

def tang(deg)
  rad = (deg * 3.14159) / 180
  rad = ((tan(rad) *1000.0).round / 1000.0)
  return rad 
end
  
def logarithm(x, base)
  x = x.to_f
    base = base.to_f
    return Math.log(x, base)
end

def natural_logarithm(x)
  x = x.to_f
    return Math.log(x)
end
  
def determinant
  mat = []
  puts "enter the number of elements"
  size = gets.chomp.to_f
  if size == 4
  puts "enter the numbers for the square matrix, hit enter after each number."
    for a in 1..size do
    mat[a - 1] = gets.chomp.to_f
  end
  value = (mat[0] * mat[3]) - (mat[1] * mat[2])
  return value
    
  elsif size == 9
    for a in 1..size do
    mat[a - 1] = gets.chomp.to_f
  end
    
  value = (mat[0] * ((mat[4] * mat[8]) - (mat[5] * mat[7]))) - (mat[3] * ((mat[1] * mat[8]) - (mat[2] * mat[7])))
  value = value + (mat[6] * ((mat[1] * mat[5]) - (mat[2] * mat[4])))
    return value
    
    
  else
    puts "Sorry, that is not a valid size"
  end
end  

  def compute(calc)
  if calc.include? "**"
    return (calc[0..calc.index("**")].to_f)**(calc[calc.index("**")+2..-1].to_f)
  elsif calc.include? "%"
    return (calc[0..calc.index("%")].to_f)%(calc[calc.index("%")+1..-1].to_f)
  elsif calc.include? "*"
    return (calc[0..calc.index("*")].to_f)*(calc[calc.index("*")+1..-1].to_f)
  elsif calc.include? "/"
    return (calc[0..calc.index("/")].to_f)/(calc[calc.index("/")+1..-1].to_f)
  elsif calc.include? "+"
    return (calc[0..calc.index("+")].to_f)+(calc[calc.index("+")+1..-1].to_f)
  elsif calc.include? "-"
    return (calc[0..calc.index("-")].to_f)-(calc[calc.index("-")+1..-1].to_f)
  elsif calc.include? "!"
    return factorial(calc[0..calc.index("!")].to_f)
  elsif calc.include? "quad"
    return quad(calc[4..calc.index(" ")].to_f, calc[calc.index(" ")..calc.index(" ")].to_f, calc[calc.index(" ")..-1].to_f)
  elsif calc.include? "pyth"
    return pyth
  elsif calc.include? "sin"
    return sine(calc[3..-1].to_f)
  elsif calc.include? "cos"
    return cosi(calc[3..-1].to_f)
  elsif calc.include? "tan"
    return tang(calc[3..-1].to_f)
  elsif calc.include? "ln"
    return natural_logarithm(calc[2..-1].to_f)
elsif calc.include? "log"
    return logarithm(calc[3..calc.index(" ")].to_f, calc[calc.index(" ")..-1].to_f)
  elsif calc.include? "determinant"
  return determinant
  end
end