class CharitiesController < ApplicationController

  def index
    @charities = Charity.all
  end

  def show 
    @user = User.find(params[:user_id])
    @charity = @user.charity
    # @charity = Charity.friendly.find(params[:id])
  end

  def new
    @user = User.find(params[:user_id])
    @charity = Charity.new
    @user.charity = @charity
    # binding.pry
  end

  def create
    @user = User.find(params[:user_id])
    @charity = Charity.new
    @user.charity = @charity
    @charity.save
    @user.save
    # binding.pry
    redirect_to root_path
  end

  # def create
  #   @user = User.find(params[:user_id])
  #   @charity = Charity.create
  #   @user.charity = @charity
  #   # @user.save
  #   redirect_to user_charity_path(@charity.id)
  # end



end