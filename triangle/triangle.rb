class Triangle
  attr_reader :side_lengths
  def initialize(side_lengths)
    @side_lengths = side_lengths
    raise(ArgumentError, 'Not a triangle') unless triangle?
  end

  def equilateral?
    side_lengths.uniq.count == 1
  end

  def isosceles?
    side_lengths.uniq.count <= 2
  end

  def scalene?
    side_lengths.uniq.count == 3
  end

  private

  def triangle?
    side_lengths.max > 0 && triangle_inequality_holds?
  end

  #  Triangle Inequality: the sum of the lengths of any two sides must be
  #  greater than or equal to the length of the remaining side.
  def triangle_inequality_holds?
    side_lengths.permutation(3).all? { |(a,b,c)| a <= b + c }
  end
end
