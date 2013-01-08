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

  def edit
    @photo = Photo.find(params[:id])
  end

  def update
    @photo = Photo.find(params[:id])
    if @photo.update_attributes(params[:photo])
      flash[:notice] = "Successfully updated photo."
      redirect_to @photo.gallery
    else
      render :action => 'edit'
    end
  end


  def destroy
    @photos = Photo.find(params[:id])
    @photos.destroy
   redirect_to :back
  end

end

