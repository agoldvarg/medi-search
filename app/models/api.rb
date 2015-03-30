class Api < ActiveRecord::Base

	require 'open-uri'

  def self.call
    base_url = "https://api.fda.gov/drug/event.json?api_key="
    JSON.load(open(base_url))
  end


end
