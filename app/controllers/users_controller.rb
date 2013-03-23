class UsersController < ApplicationController
  def show
  	@user = User.find(params[:id])
  end

  def new
  	@user = User.new
  end

  def create
  	@user = User.new(params[:user])
  	if @user.save 
  		flash[:notice] = "New User Saved"
  		redirect_to @user
  	else
      flash[:notice] = "User Already exists"
  		render :action => "new"
  	end
  end
end
