class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      flash[:notice] = "Thanks for signing in!"
      redirect_to root_url
    else
      flash[:notice] = "Whoa, try again"
      redirect_to "themes/avec/sessions/new"
    end
  end

  def destroy
    reset_session
    redirect_to root_url, :notice => "You have logged out."
  end


end
