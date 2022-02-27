class UsersController < ApplicationController
  def users
    @users = User.all
    @user1 = User.find(1)
  end
end
