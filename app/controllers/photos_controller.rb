class PhotosController < ApplicationController
  def photos
    @photos = Photo.order("Created_at DESC")
  end
  def show
    @userf = User.find params[:id]
    render :action => 'status'
  end

  def back
    @userb = User.find params[:id]
    render :action => 'users/users_status'
  end
end
