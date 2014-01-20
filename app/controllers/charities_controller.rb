class CharitiesController < ApplicationController


  def index
    @charities = Charity.all
  end

  def show 
    if params[:name]
      @charity = Charity.where(:name => params[:name]).take
    else
      @charity = Charity.find(params[:id])
    end
  end




end