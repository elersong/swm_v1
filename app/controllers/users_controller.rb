class UsersController < ApplicationController
  before_filter :authenticate_user!

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @projects = Project.where(:user_id => params[:id])
    #binding.pry
    
    ##### Below is basic authorization, preventing the logged in user to see the profile of any other person
    #unless @user == current_user
    #  redirect_to :back, :alert => "Access denied."
    #end
  end

end
