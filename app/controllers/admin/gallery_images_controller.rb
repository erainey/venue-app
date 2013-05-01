module Admin
  class GalleryImagesController < BaseController
    before_filter :the_gallery
  
    def index
      @gallery_images = GalleryImage.where("gallery_id = ?", the_gallery)

      respond_to do |format|
        format.html # index.html.erb
        format.json { render json: @gallery_images }
      end
    end


    def show
      @gallery_image = GalleryImage.find(params[:id])

      respond_to do |format|
        format.html # show.html.erb
        format.json { render json: @gallery_image }
      end
    end


    def new
      @gallery_images = GalleryImage.new

      respond_to do |format|
        format.html # new.html.erb
        format.json { render json: @gallery_image }
      end
    end


    def create
      @gallery_images = @gallery.gallery_images.new(params[:gallery_image])
      if @photo.save

      else
        render :json => { "errors" => @gallery_image.errors } 
      end
    end


    def destroy
      @gallery_image = GalleryImage.find(params[:id])
      @gallery_image.destroy

      respond_to do |format|
        format.html { redirect_to gallery_gallery_path(@gallery) }
        format.json { head :no_content }
      end
    end
  
    private 
    def the_gallery
      @gallery = Gallery.find(params["gallery_id"])
    end
  end  
end