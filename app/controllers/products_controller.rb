class ProductsController < ApplicationController


  def index
    @products = Product.all
    # @products.each do |product|
    #   product.update_price
    #   product.save
    # end
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @charity = Charity.friendly.find(params[:charity_id])
    @product = @charity.products.new
  end

  def create
    @charity = Charity.friendly.find(params[:charity_id])
    @product = @charity.products.new(product_params)
    @product.save
    redirect_to charity_path(@charity.slug)
  end

  def edit
    @charity = Charity.friendly.find(params[:charity_id])
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    @product.update(product_params)
    @charity = Charity.friendly.find(params[:charity_id])
    redirect_to charity_path(@charity.slug)
  end

  def destroy 
    @product = Product.find(params[:id])
    @product.destroy
    @charity = Charity.friendly.find(params[:charity_id])
    redirect_to charity_path(@charity.slug)
  end

  private
  def product_params
    params.require(:product).permit(:item_id, :description)
  end

 

end