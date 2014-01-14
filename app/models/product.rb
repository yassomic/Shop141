class Product < ActiveRecord::Base
  belongs_to :charity

  after_create :product_query

 #method cals the Amazon API
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
      'ItemId'        => item_id,
      'ResponseGroup' => 'Offers, Images'
    }

  #For Product Price  
    res = req.item_lookup(params)
    hash = res.to_h
    self.price = hash["ItemLookupResponse"]["Items"]["Item"]["Offers"]["Offer"]["OfferListing"]["Price"]["FormattedPrice"]

  #For Product Picture 
    res = req.item_lookup(params)
    hash = res.to_h 
    self.img = hash["ItemLookupResponse"]["Items"]["Item"]["LargeImage"]["URL"]
 

    params = {
      'IdType'        => 'ASIN',
      'ItemId'        => item_id,
    }

  #For Amazon URL
    res = req.item_lookup(params)
    hash = res.to_h
    self.amazonUrl = hash["ItemLookupResponse"]["Items"]["Item"]["ItemLinks"]["ItemLink"][0]["URL"]
 

  #For Product Title
    res = req.item_lookup(params)
    hash = res.to_h
    self.name = hash["ItemLookupResponse"]["Items"]["Item"]["ItemAttributes"]["Title"]
    self.save

  end
end
