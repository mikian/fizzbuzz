class HomeController < ApplicationController
  def index
    if params[:index]
      Favourite.create(index: params[:index])
    end

    @offset = (params.fetch(:offset, 1)).to_i
    @window = (params.fetch(:per_page, 100)).to_i

    from = @offset
    to = from + @window
    range = from...to

    @favourites = Favourite.where(index: range).map(&:index)
    @fizzbuzz = FizzBuzz.slice(range)
  end
end
