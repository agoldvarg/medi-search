class SearchController < ApplicationController

	def new
		@search = Search.new
	end

	def create
		binding.pry
	end

end

#Event.where("generic_name like '%STENT%'").order("date_of_event DESC").limit(5)
