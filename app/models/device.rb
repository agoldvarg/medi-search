class Device < ActiveRecord::Base
  belongs_to  :manufacturer
  has_many  :events

end
