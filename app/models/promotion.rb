class Promotion < ActiveRecord::Base
  belongs_to :offer
  attr_accessible :method, :start_time, :title
end
