class ProductsController < ApplicationController


  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

 
    # req = Vacuum.new 

    # req.configure(
    #   aws_access_key_id: 'AKIAJP4O3CBZB7QOLM3A',
    #   aws_secret_access_key: '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',
    #   associate_tag: 'shop1410f-20'
    # )

    # req.associate_tag = 'shop1410f-20'


    # params = {
    #   'SearchIndex' => 'Books',
    #   'Keywords'    => 'Architecture'
    # }
    # res = req.item_search(params)

    # res.to_h
    
  # def product_query
  #   response = Unirest.get("https://www.googleapis.com/
  #     youtube/v3/videos?part=snippet%2C+statistics&id=
  #     #{self.youtube_id}&key=#{ENV['YOUTUBE_API_KEY']}")

  #   response = Unirest.get("http://webservices.amazon.com/onca/
  #     xml?AWSAccessKeyId=AKIAJP4O3CBZB7QOLM3A&AssociateTag=shop1410f-20&
  #     Keywords=harry%20potter&Operation=ItemSearch&SearchIndex=Books&
  #     Service=AWSECommerceService&Timestamp=2014-01-11T21%3A01%3A07.000Z&
  #     Version=2011-08-01&Signature=u%2BFQQYRJT6UL05lBZbKmejxy9YKAHXJR1ceauXKuG4A%3D")

  #   self.title = response.body["items"][0]["snippet"]["title"]
  #   self.description = response.body["items"][0]["snippet"]["description"]
  #   self.save
  # end


end