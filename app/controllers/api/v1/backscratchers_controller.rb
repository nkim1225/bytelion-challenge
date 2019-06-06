class Api::V1::BackscratchersController < ApplicationController
  protect_from_forgery unless: -> { request.format.json? }

  def index
    render json: Backscratcher.all
  end

  def create
    new_scratcher = Backscratcher.new(item_name: params[:item_name], item_description: params[:item_description],
                                      item_size: params[:item_size], item_cost: params[:item_cost])
    if new_scratcher.save
      render json: new_scratcher
    else
      render json: {errors: new_scratcher.errors.full_messages}
    end
  end

  def update
    backscratcher = Backscratcher.update(params[:id], item_name: params[:item_name], item_description: params[:item_description],
                                         item_size: params[:item_size], item_cost: params[:item_cost])
    if backscratcher.save
      render json: backscratcher
    else
      render json: {errors: backscratcher.errors.full_messages}
    end
  end

  # def backscratcher_params
  #   params.require(:backscratcher).permit(:name, :age)
  # end
end