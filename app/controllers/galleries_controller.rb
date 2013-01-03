class GalleriesController < ApplicationController

	def index
    @gallery = Gallery.paginate(page: params[:page]).per_page(6)
      @photos = Photo.find(:all, :limit => 1)
  	end


  def show
    @gallery = Gallery.find(params[:id])
    @photos = @gallery.photos.all
    #@photos = @gallery.photos.paginate(page: params[:page])
  end

   def destroy
    	@gallery = Gallery.find(params[:id])
    	@gallery.destroy
    	flash[:notice] = "Successfully destroyed gallery."
    	redirect_to galleries_url
  	end
end
