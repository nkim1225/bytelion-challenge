class BackscratchersController < ApplicationController
  protect_from_forgery unless: -> { request.format.json? }

  def new
    @backscratcher = Backscratcher.new
  end
  def create
    new_backscratcher = Backscratcher.new(create_params)
    if current_user == nil || !current_user.admin?
      flash[:error] = ["You are not an admin"]
      redirect_to new_backscratcher_path
    elsif new_backscratcher.save
      redirect_to root_path
    else
      flash[:error] = new_backscratcher.errors.full_messages
      redirect_to new_backscratcher_path
    end
  end
  def edit
    @backscratcher = Backscratcher.find(params[:id])
  end

  def update
    backscratcher = Backscratcher.find(params[:id])
    if current_user == nil || !current_user.admin?
      flash[:error] = ["You are not an admin"]
      redirect_to edit_backscratcher_path
    elsif backscratcher.update_attributes(create_params)
      flash[:notice] = ["You Have Successfully Edited the Backscratcher"]
      redirect_to root_path
    else
      flash[:error] = backscratcher.errors.full_messages
      redirect_to edit_backscratcher_path
    end

  end
  def create_params
    params.require(:backscratcher).permit(:item_name, :item_description, :item_size, :item_cost)
  end
end