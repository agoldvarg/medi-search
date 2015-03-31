class Api < ActiveRecord::Base

	require 'open-uri'

  def self.call
    base_url = "https://api.fda.gov/device/event.json?api_key=S9BDUNvbSr75OCkTG4ZB8sYzMBPSVjZrIDK0qRdo"
    JSON.load(open(base_url))
  end


end
