class RentsController < ApplicationController
  
  def index
    @rents = policy_scope(Rent)
  end 
  
  def create
    @rent = Rent.new(bedroom: @bedroom, user: current_user)
    authorize @rent
    @rent.bedroom.rented = true
    @rent.save
    @bedroom.rented = true
    @bedroom.save
    redirect_to rents_path, notice: "O bedroom #{@bedroom.id} foi alugado."
  end

  private

  def set_bedroom
    @bedroom = Bedroom.find(params[:bedroom_id])
  end
end
