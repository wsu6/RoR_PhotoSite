class PhotosController < ApplicationController
  def photos
    @photos = Photo.order("Created_at DESC")
    @phof = Photo.find(1)
    #render action: 'photos'
  end
end
