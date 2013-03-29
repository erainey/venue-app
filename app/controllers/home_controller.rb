class HomeController < ApplicationController
  def index
  	@venues = Venue.all
  end
end
