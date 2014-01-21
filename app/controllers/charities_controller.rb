class CharitiesController < ApplicationController

  def index
    @charities = Charity.all
  end

  def show 
    @charity = Charity.friendly.find(params[:id])
  end

end