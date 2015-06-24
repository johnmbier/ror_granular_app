class SessionController < ApplicationController
  def new
  end

  def create
    user = User.find_by(name: params[:user])
    if user && user.password == params[:password]
      session[:user] = params[:user]
      redirect_to root_url, notice: 'Welcome to the site!'
    else
      flash.now[:error] = "NO Soup For You!"
      render :new
    end
  end

  def destroy
    session[:user] = nil
    redirect_to root_url, notice: 'Peace Out!!'
  end
end
