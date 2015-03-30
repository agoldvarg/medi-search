class Api < ActiveRecord::Base

  def self.call
    base_url = "https://api.fda.gov/drug/event.json?api_key=S9BDUNvbSr75OCkTG4ZB8sYzMBPSVjZrIDK0qRdo"
  end


end
