class Triangle
  attr_accessor :length_1, :length_2, :length_3 
  def initialize(length_1, length_2, length_3)
    @length_1 = length_1
    @length_2 = length_2
    @length_3 = length_3
  end
  def kind
    # if self.length_1 == self.length_2 && self.length_2 == self.length_3
    #   :equilateral
    # elsif self.length_1 == self.length_2 || self.length_1 == self.length_3 || self.length_2 == self.length_3
    #   :isosceles
    # else
    #   :scalene  
    # end
    if self.length_1 + self.length_2 <= self.length_3
      begin
        raise TriangleError
      end
    elsif self.length_1 + self.length_3 <= self.length_2
      begin
        raise TriangleError
      end
    elsif self.length_2 + self.length_3 <= self.length_1
      begin
        raise TriangleError
      end
    elsif self.length_1 == self.length_2 && self.length_2 == self.length_3
        :equilateral
    elsif self.length_1 == self.length_2 || self.length_1 == self.length_3 || self.length_2 == self.length_3
        :isosceles
    else
      :scalene 
    end
  end

  class TriangleError < StandardError

  end
end
