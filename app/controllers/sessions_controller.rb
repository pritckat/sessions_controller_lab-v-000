class SessionsController < ApplicationController

  def new
  end

  def create
    if params[:name] == nil
      redirect_to '/'
    else
    session[:username] = params[:username]
    redirect_to '/'
  end
  end

  def destroy
    session.delete :username
  end
end
