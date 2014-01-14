require 'bigdecimal'
require 'bigdecimal/util'

class Product < ActiveRecord::Base

  belongs_to :charity
  
  after_create :product_query


 def product_query
    req = Vacuum.new 
    req.configure(
      aws_access_key_id: ENV['ACCESS_KEY_ID'],
      aws_secret_access_key: ENV['SECRET_KEY'],
      associate_tag: ENV['ASSOCIATES_ID']
    )

    req.associate_tag = 'shop1410f-20'

    item_id = self.item_id

    params = {
      'IdType'        => 'ASIN',
      'ResponseGroup' => 'Offers,ItemAttributes',
      'ItemId'        => item_id
    }

  #For Price  
    res = req.item_lookup(params)

    doc = res

    price = doc.search('Price').map{ |price|}

    # hash = res.to_h
    # hash2 = hash["ItemLookupResponse"]
    # array = hash2.to_a
    # array2 = array[2]
    # hash3 = array2[1].to_h
    # hash4 = hash3["Item"]
    # hash5 = hash4["Offers"]
    # hash6 = hash5["Offer"]
    # hash7 = hash6["OfferListing"]
    # hash8 = hash7["Price"]
    # self.price = hash8["Amount"].to_d/100.to_f
    # self.save

 #For Title
    # binding.pry
 
    # res = req.item_lookup(params)
    # hash = res.to_h
    # hash2 = hash["ItemLookupResponse"]
    # array = hash2.to_a

    # array2 = array[2]
    # hash3 = array2[1].to_h
    # hash4 = hash3["Item"]
    # hash5 = hash4["ItemAttributes"]
    # array3 = hash5.to_a

    # self.name = array3[25ex][1]
    # self.save


  end





end
