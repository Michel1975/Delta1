class Merchant < ActiveRecord::Base
  attr_accessible :city, :describtion, :postal_code, :store_name, :street, :longitude, :latitude

  has_many :offers
  has_many :members
end
