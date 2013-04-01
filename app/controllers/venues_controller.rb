class VenuesController < ApplicationController
  def index
    @venues = Venue.published.featured.limit(3)
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

  def create
    @venue = Venue.new(params[:venue])
   
    respond_to do |format|
      if @venue.save
        format.html  { redirect_to(@venue,
                      :notice => 'Venue was successfully created.') }
      else
        format.html  { render :action => "new" }
      end
    end
  end

  def edit
    @venue = Venue.find(params[:id])

    respond_to do |format|
      format.html
    end
  end

  def update
    @venue = Venue.find(params[:id])
   
    respond_to do |format|
      if @venue.update_attributes(params[:venue])
        format.html  { redirect_to(@venue,
                      :notice => 'Venue was successfully updated.') }
      else
        format.html  { render :action => "edit" }
      end
    end

end

end
