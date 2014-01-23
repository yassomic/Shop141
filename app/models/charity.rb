class Charity < ActiveRecord::Base
  belongs_to :user
  has_many :products

  extend FriendlyId
  friendly_id :name, use: :slugged
end
