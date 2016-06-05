class FizzBuzz
  def self.slice(range)
    range.lazy.map do |x|
      [
        x,
        if x % 3 == 0
          'Fizz'
        elsif x % 5 == 0
          'Buzz'
        else
          x
        end
      ]
    end
  end
end
