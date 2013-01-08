class PhotosController < ApplicationController
  def new

  end

  def create
    @photo = Photo.new(params[:photo])
    if @photo.save
      flash[:notice] = "Successfully created photo."
      redirect_to @photo.gallery
    else
      redirect_to @photo.gallery
    end
  endd
end

  def destroy
    @photos = Photo.find(params[:id])
    @photos.destroy
   redirect_to :back
  end

end

