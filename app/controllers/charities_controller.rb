class CharitiesController < ApplicationController

  def index
    @charities = Charity.all
  end

  def show 
    # @user = User.find(params[:user_id])
    # @charity = @user.charity
    @charity = Charity.friendly.find(params[:id])
  end

  def new
    @user = User.find(params[:user_id])
    @charity = Charity.new
    @user.charity = @charity
    @product = @charity.products.new
  end

  def create
    @user = User.find(params[:user_id])
    @charity = Charity.new(charity_params)
    @user.charity = @charity
    @charity.user = @user
    @charity.save
    @user.save
    # redirect_to user_charity_path(@user.id, @charity.id)
    redirect_to charity_path(@charity.slug)
  end

  def edit
    @charity = Charity.friendly.find(params[:id])
  end

  def update
    @charity = Charity.friendly.find(params[:id])
    @charity.update(charity_params)
    redirect_to charity_path(@charity.slug)
  end


  private
  def charity_params
    params.require(:charity).permit(:name, :description, :affiliate_id, :link)
  end


end