class Triangle
  attr_reader :a, :b, :c
  
  def initialize(a, b, c)
    @a= a
    @b= b
    @c= c
  end 
  
 
  def actual_triangle
    triangle ? [(a + b > c), (b + c > a), (a + c > b)] &&
      [a, b, c].each {|side| side >= 0} : puts TriangleError
  end 
 
  def kind 
    actual_triangle
    if a == b && b == c
      :equilateral
    elsif a == b || b == c || c == a
      :isosceles
    else 
      :scalene
    end
  end 
 
  class TriangleError < StandardError
  end 
end 
