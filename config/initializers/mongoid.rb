class Mongoid::Criteria

  def random(n = 1)
    indexes = (0..self.count-1).sort_by{rand}.slice(0,n).collect!

    if n == 1
      return self.skip(indexes.first).first
    else
      return indexes.map{ |index| self.skip(index).first }
    end
  end

end

module Mongoid
  module Finders

    def random(n = 1)
      criteria.random(n)
    end

  end
end