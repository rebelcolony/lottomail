class UsersController < ApplicationController
  before_filter :authorize, :except => [:new, :create]
  
  def index
    @users = User.all
  end
  
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      UserMailer.deliver_registration_confirmation(@user)
      flash[:notice] = "Successfully registered"
      redirect_to :controller => "users", :action => "new"
    else
      render :action => 'new'
    end
  end
  
  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end
  
  
  def update
    @user = User.find(params[:id])
      if @user.update_attributes(params[:user])
        flash[:notice] = 'User was successfully updated.'
        redirect_to users_path
      else
        render :action => "edit"
    end
  end
  
  def destroy
    @user = User.find(params[:id])
    @user.destroy
    flash[:notice] = 'User was successfully destroyed.'
    redirect_to(users_url)
  end
  
end
