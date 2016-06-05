class HomeController < ApplicationController
  def index
    @offset = (params.fetch(:offset, 1)).to_i
    @window = (params.fetch(:per_page, 100)).to_i

    from = @offset
    to = from + @window
    range = from...to

    @fizzbuzz = FizzBuzz.slice(range)
  end
end
