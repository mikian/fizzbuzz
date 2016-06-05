class HomeController < ApplicationController
  def index
    @fizzbuzz = FizzBuzz.slice(1..100)
  end
end
