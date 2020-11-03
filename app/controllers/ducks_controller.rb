class DucksController < ApplicationController

  def index
    @ducks = Duck.all
  end
  
  def show
    @duck = Duck.find(params[:id])
  end
  
  def new
    @duck = Duck.new
  end
  
  def edit
    @duck = Duck.find(params[:id])
  end

  def create
    @duck = Duck.create(duck_params)
    redirect_to duck_path(@duck)
  end

  def update
    @duck = Duck.find(params[:id])
    @duck.update(duck_params)
    redirect_to duck_path(@duck)
  end

  private

  def duck_params
    params.require(:duck).permit(:name, :description, :student_id)
  end
end
