class Triangle
  attr_reader :a, :b, :c
  
  def initialize(a, b, c)
    @a= a
    @b= b
    @c= c
  end 
  
 
  def actual_triangle
    real_triangle = [(a + b > c), (b + c > a), (a + c > b)]
      [a, b, c].each {|side| real_triangle << false if s<= 0} 
      raise TriangleError if real_triangle.include? (false)
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
