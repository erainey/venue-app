module Admin
  class VenuesController < BaseController

    def index
      @venues = Venue.where(:published => true)
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
      authorize! :update, @venue
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

    def search
      @types = Type.all
      @amenities = Amenity.all

      @search = Venue.where(:published => true).near(params[:location]).search(params[:q])
      @venues = @search.result

      search_results_message(@venues)

      respond_to do |format|
        format.html
      end
    end

    def search_results_message(obj)
      result_count = obj.count
      if result_count == 0
        flash[:notice] = "No results found. Please try again."
      else
        if result_count == 1
          flash[:notice] = @venues.length.to_s + " result found."
        else
          flash[:notice] = @venues.length.to_s + " results found."
        end
      end
    end

  end

end


