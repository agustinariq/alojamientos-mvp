class LodgingsController < ApplicationController

  def index
    @lodgings = Lodging.all
  end

  def new
    @lodging = Lodging.new
  end

  def edit
    @lodging = Lodging.find(params[:id])
  end

  def create
    @lodging = Lodging.create(lodging_params)
    redirect_to @lodging
  end

  def update
    @lodging = Lodging.find(params[:id])

    if @lodging.update(lodging_params)
      redirect_to @lodging
    else
      render 'edit'
    end
  end

  def show
    @lodging = Lodging.find(params[:id])
  end

  def destroy
    @lodging = Lodging.find(params[:id])
    @lodging.destroy

    redirect_to lodgings_path
  end

  private

  def lodging_params
    params.require(:lodging).permit(:address, :city, :province, :id, :lodging_type, :category)
  end

end
