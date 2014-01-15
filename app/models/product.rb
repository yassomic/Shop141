class Product < ActiveRecord::Base

  belongs_to :charity
  
  # after_create :product_query
  after_create :configure_item, :set_title_url_params, :set_price_pic_params, :set_title, :set_price, :set_picture, :set_url

 #method calls the Amazon API

 def configure_item
  @req = Vacuum.new 
      @req.configure(
        aws_access_key_id: ENV['ACCESS_KEY_ID'],
        aws_secret_access_key: ENV['SECRET_KEY'],
        associate_tag: ENV['ASSOCIATES_ID']
      )
      @req.associate_tag = 'shop1410f-20'
      item_id = self.item_id
 end

 def set_title_url_params
  @title_url_params = {
        'IdType'        => 'ASIN',
        'ItemId'        => item_id,
      }
 end

 def set_title
  @title_res = @req.item_lookup(@title_url_params)
  hash = @title_res.to_h
  self.name = hash["ItemLookupResponse"]["Items"]["Item"]["ItemAttributes"]["Title"]
  self.save
 end

 def set_price_pic_params
  @price_pic_params = {
        'IdType'        => 'ASIN',
        'ItemId'        => item_id,
        'ResponseGroup' => 'Offers, Images'
      }
 end

 def set_price
  @price_res = @req.item_lookup(@price_pic_params)
  hash = @price_res.to_h
  self.price = hash["ItemLookupResponse"]["Items"]["Item"]["Offers"]["Offer"]["OfferListing"]["Price"]["FormattedPrice"]
  self.save
 end

 def set_picture
  @pic_res = @req.item_lookup(@price_pic_params)
  hash = @pic_res.to_h 
  self.img = hash["ItemLookupResponse"]["Items"]["Item"]["LargeImage"]["URL"]
  self.save
 end

 def set_url
  @url_res = @req.item_lookup(@title_url_params)
  hash = @url_res.to_h
  self.amazonUrl = hash["ItemLookupResponse"]["Items"]["Item"]["ItemLinks"]["ItemLink"][0]["URL"]
  self.save
 end

 # def product_query
 #    req = Vacuum.new 
 #    req.configure(
 #      aws_access_key_id: ENV['ACCESS_KEY_ID'],
 #      aws_secret_access_key: ENV['SECRET_KEY'],
 #      associate_tag: ENV['ASSOCIATES_ID']
 #    )

 #    req.associate_tag = 'shop1410f-20'

 #    item_id = self.item_id

 #    params = {
 #      'IdType'        => 'ASIN',
 #      'ItemId'        => item_id,
 #      'ResponseGroup' => 'Offers, Images'
 #    }

 #  #For Product Price  
 #    res = req.item_lookup(params)

 #    hash = res.to_h
 #    self.price = hash["ItemLookupResponse"]["Items"]["Item"]["Offers"]["Offer"]["OfferListing"]["Price"]["FormattedPrice"]

 #  #For Product Picture 
 #    res = req.item_lookup(params)
 #    hash = res.to_h 
 #    self.img = hash["ItemLookupResponse"]["Items"]["Item"]["LargeImage"]["URL"]
 

 #    params = {
 #      'IdType'        => 'ASIN',
 #      'ItemId'        => item_id,
 #    }

 #  #For Amazon URL
 #    res = req.item_lookup(params)
 #    hash = res.to_h
 #    self.amazonUrl = hash["ItemLookupResponse"]["Items"]["Item"]["ItemLinks"]["ItemLink"][0]["URL"]
 

 #  #For Product Title
 #    res = req.item_lookup(params)
 #    hash = res.to_h
 #    self.name = hash["ItemLookupResponse"]["Items"]["Item"]["ItemAttributes"]["Title"]
 #    self.save

 #  end

end
