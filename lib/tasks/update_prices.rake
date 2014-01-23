task :update_prices => :environment do 
 
  products = Product.all

  products.each do |product|
    sleep(1.second)
    product.update_price
  end
  
end