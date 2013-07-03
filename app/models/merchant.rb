class Merchant < ActiveRecord::Base
  attr_accessible :city, :describtion, :postal_code, :store_name, :street, :longitude, :latitude

  has_many :offers
  has_many :members

  geocoded_by :street, :if => :street_changed?
  after_validation :geocode, :if => :street_changed?
end
