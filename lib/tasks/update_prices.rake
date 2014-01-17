task :update_prices => :environment do
  products = Product.all
  products.each do |product|
    puts product.name
  end
end