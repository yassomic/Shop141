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
  end

  def create
    @user = User.find(params[:user_id])
    @charity = Charity.new(charity_params)
    @user.charity = @charity
    @charity.save
    @user.save
    redirect_to user_charity_path(@user.id, @charity.id)
  end


  private
  def charity_params
    params.require(:charity).permit(:name, :description, :affiliate_id)
  end


end