class HomeController < ApplicationController
  def index
    @user = User.new
  end

  def login
  end

  def authenticate
    puts "welcome  we"
    puts params[:user_name]
    puts params[:password]
    @user=User.find_by_user_name_and_password(params[:user_name],params[:password])
    
    if @user
      session[:user]=@user.id
      redirect_to (@user,:notice => "User #{@user.user_name}  Loggedin")
    else
      flash[:notice] = "User name or Password is wrong"
      redirect_to :back
    end
  end

def logout
      session[:user]=nil
      flash[:notice] = "Successfully logedout"
      redirect_to :controller => "home", :action => "index"
end

end
