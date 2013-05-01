module Admin
  class AmenitiesController < BaseController
    # GET /types
    # GET /types.json
    def index
      @amenities = Amenity.all

      respond_to do |format|
        format.html # index.html.erb
        format.json { render json: @amenities }
      end
    end

    # GET /types/1
    # GET /types/1.json
    def show
      @amenity = Amenity.find(params[:id])

      respond_to do |format|
        format.html # show.html.erb
        format.json { render json: @amenity }
      end
    end

    # GET /types/new
    # GET /types/new.json
    def new
      @amenity = Amenity.new

      respond_to do |format|
        format.html # new.html.erb
        format.json { render json: @amenity }
      end
    end

    # GET /types/1/edit
    def edit
      @amenity = Amenity.find(params[:id])
    end

    # POST /types
    # POST /types.json
    def create
      @amenity = Amenity.new(params[:amenity])

      respond_to do |format|
        if @amenity.save
          format.html { redirect_to admin_amenity_path(@amenity), notice: 'Amenity was successfully created.' }
          format.json { render json: @amenity, status: :created, location: @amenity }
        else
          format.html { render action: "new" }
          format.json { render json: @amenity.errors, status: :unprocessable_entity }
        end
      end
    end

    # PUT /types/1
    # PUT /types/1.json
    def update
      @amenity = Type.find(params[:id])

      respond_to do |format|
        if @amenity.update_attributes(params[:amenity])
          format.html { redirect_to admin_type_path(@amenity), notice: 'Amenity was successfully updated.' }
          format.json { head :no_content }
        else
          format.html { render action: "edit" }
          format.json { render json: @amenity.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /types/1
    # DELETE /types/1.json
    def destroy
      @amenity = Amenity.find(params[:id])
      @amenity.destroy

      respond_to do |format|
        format.html { redirect_to admin_amenities_path }
        format.json { head :no_content }
      end
    end
  end
end