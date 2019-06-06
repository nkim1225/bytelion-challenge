class HomesController < ApplicationController
  def index
    @scratchers = Backscratcher.all
  end
end
