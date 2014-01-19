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

 

end