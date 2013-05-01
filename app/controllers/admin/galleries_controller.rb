module Admin
  class GalleriesController < BaseController
    # GET /gallery
    # GET /gallery.json
    def index
      @galleries = Gallery.all

      respond_to do |format|
        format.html # index.html.erb
        format.json { render json: @galleries }
      end
    end

    # GET /gallery/1
    # GET /gallery/1.json
    def show
      @gallery = Gallery.find(params[:id])
      #@images = GalleryImage.find(@gallery.id)
      respond_to do |format|
        format.html # show.html.erb
        format.json { render json: @gallery }
      end
    end

    # GET /gallery/new
    # GET /gallery/new.json
    def new
      @gallery = Gallery.new

      respond_to do |format|
        format.html # new.html.erb
        format.json { render json: @gallery }
      end
    end

    # GET /gallery/1/edit
    def edit
      @gallery = Gallery.find(params[:id])
    end

    # POST /gallery
    # POST /gallery.json
    def create
      @gallery = Gallery.new(params[:type])

      respond_to do |format|
        if @gallery.save
          format.html { redirect_to admin_type_path(@gallery), notice: 'Gallery was successfully created.' }
          format.json { render json: @gallery, status: :created, location: @gallery }
        else
          format.html { render action: "new" }
          format.json { render json: @gallery.errors, status: :unprocessable_entity }
        end
      end
    end

    # PUT /gallery/1
    # PUT /gallery/1.json
    def update
      @gallery = Gallery.find(params[:id])

      respond_to do |format|
        if @gallery.update_attributes(params[:type])
          format.html { redirect_to admin_type_path(@gallery), notice: 'Gallery was successfully updated.' }
          format.json { head :no_content }
        else
          format.html { render action: "edit" }
          format.json { render json: @gallery.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /gallery/1
    # DELETE /gallery/1.json
    def destroy
      @gallery = Gallery.find(params[:id])
      @gallery.destroy

      respond_to do |format|
        format.html { redirect_to admin_types_path }
        format.json { head :no_content }
      end
    end
  end
end