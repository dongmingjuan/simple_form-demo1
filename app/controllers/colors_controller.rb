class ColorsController < ApplicationController
  def index
   @colors = Color.all
  end
  def new
    @color = Color.new
  end
  def create
    @color = Color.new(color_params)
    if @color.save
      redirect_to colors_path
    else
      render :new
    end
  end
  private
  def color_params
    params.require(:color).permit(:name)
  end
end
