class Offer < ActiveRecord::Base
  belongs_to :merchant
  attr_accessible :describtion, :end_date, :start_date, :title

  has_many :promotions
end
