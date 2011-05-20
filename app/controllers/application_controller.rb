class ApplicationController < ActionController::Base
  protect_from_forgery
  
    def protect
    if session[:user].nil?
      flash[:notice] = "You must be logged in to access this section"
      redirect_to :controller => "home", :action => "index"
    end
  end
end
