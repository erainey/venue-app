class VenuesController < ApplicationController
  def index
  end

  def show
  	@venue = Venue.find(params[:id])
  	
  	respond_to do |format|
      format.html
    end
  end

  def new
  	@venue = Venue.new

  	respond_to do |format|
      format.html
    end
  end
end
