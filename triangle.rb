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
  validate_sides(a, b, c)
  if [a, c].include? b
    return (a != c ? :isosceles : :equilateral)
  else
    return (a == c ? :isosceles : :scalene)
  end
end

def validate_sides(a, b, c)
  fail TriangleError if
    a <= 0 || b <= 0 || c <= 0 ||
    a + b <= c ||
    a + c <= b ||
    b + c <= a

end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
