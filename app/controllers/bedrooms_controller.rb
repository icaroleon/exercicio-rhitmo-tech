class BedroomsController < ApplicationController

  def index
    @bedrooms = Bedroom.all
    authorize @bedroom
  end

  def new
    @bedroom = Bedroom.new
    authorize @bedroom
  end
  
  def create
    @bedroom = Bedroom.new(bedroom_params)
    @user = current_user
    @bedroom.user = @user
    authorize @bedroom
    
    if @bedroom.save
      redirect_to bedroom_path(@bedroom)
    else
      render :new
    end
  end

  def show
    @bedroom = Bedroom.find(params[:id])
    authorize @bedroom
  end

  private

  def bedroom_params
    params.require(:bedroom).permit(:description, :price, :rented, :category, :photo)
  end  
end
