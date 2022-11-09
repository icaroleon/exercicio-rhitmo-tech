class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]
  
  def home
    @bedrooms = Bedroom.where(rented: false)
  end
end
