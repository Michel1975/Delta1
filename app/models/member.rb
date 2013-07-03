class Member < ActiveRecord::Base
  belongs_to :merchant
  attr_accessible :city, :email, :gender, :name, :phone_number, :postal_code, :street
end
