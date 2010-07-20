class SessionsController < ApplicationController
  def new
  end

  def create
    session[:password] = params[:password]
    if
      session[:password] == "dRETr3"
      flash[:notice] = "Successfully logged in"
      redirect_to(:controller => "users", :action => "new")
    else
      flash[:error] = "Password is incorrect, please try again"
      redirect_to(:controller => 'sessions', :action => 'new')
    end
  end

  def destroy
    reset_session
    flash[:notice] = "Successfully logged out, bye!"
    redirect_to(:controller => "users", :action => "new")
  end

end
