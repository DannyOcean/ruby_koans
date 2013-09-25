# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
 	if (a < 0) || (b < 0) || (c < 0) 
 		raise TriangleError, "Length of the 3rd side of triangle can't be more than the sum of other sides."
  	end
  	
  	if (a + b <= c) || (b + c <= a) || (a + c <= b)
  		raise TriangleError, "Sides of the triangle can't be less than 0."
  	end 	
	
	if (a == b) && (a == c) && (b == c) 
		return :equilateral 
	elsif (a != b) && (b != c) && (a != c)
	  	return :scalene
	else
		return :isosceles
	end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
