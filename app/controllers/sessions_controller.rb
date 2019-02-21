class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_email(params[:email])
    #if the user exists and the password matches
    if user && user.authenticate(params[:params])
      #save the user id inside the browser cookie
      session[:user_id] = user.id
      redirect_to '/'
    else
      #wrong login, redirect to the login form
      redirect_to '/login'
    end
  end 

  def destroy
    session[:user_id] = nil
    redirect_to '/login'
  end
end
