class UsersController < ApplicationController
  def users
    @users = User.all
  end
  def show
    @userf = User.find params[:id]
    render :action => 'user_status'
  end
end
