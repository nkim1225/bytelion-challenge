class Api::V1::BackscratchersController < ApplicationController
  def index
    backscratchers = Backscratcher.all
    binding.pry
    render json: Backscratcher.all
  end
  def show
    binding.pry
  end
end