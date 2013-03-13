class UsersController < ApplicationController
  def index
  end

  def show
  	@user = User.find(params[:id])
  	@role = @user.roles
  end
end
