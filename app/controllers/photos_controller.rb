class PhotosController < ApplicationController
  def photos
    @photos = Photo.order("Created_at DESC")
    #render action: 'photos'
  end
  def show
    @phof = Photo.find params[:id]
    render :action => 'status'
  end
end
