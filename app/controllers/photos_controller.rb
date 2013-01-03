class PhotosController < ApplicationController
   def index
    @gallery=Gallery.find{params[:gallery_id]}
    @photo = Photo.find(params[:gallery_id])
  end

def show
  @gallery=Gallery.find(params[:gallery_id])
  @photo= @gallery.photo.id
end

def new
  redirect_to(root_path) unless !signed_in?
  @user=User.new
end


  def destroy
    @photo = Photo.find(params[:id])
    @photo.destroy
    flash[:notice] = "Successfully destroyed photo."
    redirect_to @photo.gallery
  end

end

