class VillainsController < ApplicationController
  def index
    @villains = Villain.all
  end

  def new
    @villain = Villain.new
  end

  def show
    @villain = Villain.find(params[:id])
  end

  def create
    @villain = Villain.create(villain_params)
    redirect_to villain_path(@villain)
  end

  def edit
    @villain = Villain.find(params[:id])
  end

  def update
    villain = Villain.find(params[:id])
    villain.update(villain_params)
    redirect_to villain_path(villain)
  end

  def delete
    @villain = Villain.find(params[:id])
    @villain.destroy
    redirect_to villains_path
  end


  private

  def villain_params
    params.require(:villain).permit(:name, :city, :super_powers, :hero_id)
  end

end
