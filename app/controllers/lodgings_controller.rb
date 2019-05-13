class LodgingsController < ApplicationController

  def new
    @lodging = Lodging.new
  end

  def create
    @lodging = Lodging.create(lodging_params)
    redirect_to @lodging
  end

  def show
    @lodging = Lodging.find(params[:id])
  end

  private

  def lodging_params
    params.require(:lodging).permit(:address, :city, :province, :id, :lodging_type, :category)
  end

end
