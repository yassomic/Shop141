task :update_prices => :environment do 
 
  products = Product.all

  products.each do |product|
    product.update_price
    product.save
  end
  
end