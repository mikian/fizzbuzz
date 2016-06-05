class ApisController < ApplicationController
  def show
    @offset = (params.fetch(:offset, 1)).to_i
    @window = (params.fetch(:per_page, 100)).to_i

    from = @offset
    to = from + @window
    range = from...to

    @favourites = Favourite.where(index: range).map(&:index)
    @fizzbuzz = FizzBuzz.slice(range).map{|i,x| {index: i, fizzbuzz: x, favourite: @favourites.include?(i)}}

    render json: @fizzbuzz
  end

  def favourite
    fav = Favourite.create(index: params[:index])
    if fav
      render nothing: true, status: :created
    else
      render json: fav.errors, status: :bad_request
    end
  end
end
