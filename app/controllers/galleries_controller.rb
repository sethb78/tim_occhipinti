class GalleriesController < ApplicationController

  def index
    @galleries = Gallery.find(:all, :order => "created_at DESC")
  end

  # def new
  #   @gallery=Gallery.new
  # end

  # def create
  #   @gallery = Gallery.new(params[:gallery])
  #   if @gallery.save
  #     flash[:notice] = "Successfully created gallery."
  #     redirect_to galleries_path
  #     else
  #     render :action => 'new'
  #   end
  # end

  def show
    @gallery = Gallery.find(params[:id])
  end

  # def edit
  #   @gallery = Gallery.find(params[:id])
  #   @photos=@gallery.photos.paginate(page: params[:page]).per_page(18)
  #   @photo = Photo.new(:gallery_id => params[:gallery_id])  
  # end



  # def update
  #   @gallery=Gallery.find(params[:id])
  #   if @gallery.update_attributes(params[:gallery])
  #     flash[:success] = "#{@gallery.name} Updated"
  #     redirect_to galleries_path
  #   else
  #     render 'edit'
  #   end
  # end

   def destroy
    	@gallery = Gallery.find(params[:id])
    	@gallery.destroy
    	flash[:notice] = "Successfully destroyed #{@gallery.name} and its #{@gallery.photos.count} photos."
    	redirect_to galleries_url
  	end
end
