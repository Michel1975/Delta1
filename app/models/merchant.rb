class Merchant < ActiveRecord::Base
  attr_accessible :city, :describtion, :postal_code, :store_name, :street

  has_many :offers
  has_many :members
end
