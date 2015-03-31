class SearchController < ApplicationController

	def new
		@search = Search.new
	end

	def create
    @search_term = params["search"]["search_term"].upcase
    @recent_events = Event.where("generic_name like '%#{@search_term}%' AND date_of_event IS NOT NULL").order("date_of_event DESC").limit(5)
    binding.pry
    render :show
	end

  def show
  end

end
