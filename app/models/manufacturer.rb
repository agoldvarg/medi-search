class Manufacturer < ActiveRecord::Base
  has_many  :devices
  has_many  :events
  has_many  :events, through: :devices
  
end
