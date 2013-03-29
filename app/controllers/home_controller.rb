class HomeController < ApplicationController
  def index
  	@venues = Venue.published.featured.limit(3)
  end
end
