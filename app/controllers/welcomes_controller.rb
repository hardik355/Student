class WelcomesController < ApplicationController

  def index
    @welcomes = Welcome.all
    render :layout => 'test'
  end

  def show  
     @welcome = Welcome.find(params[:id])
  end
  
  def edit
    @welcome = Welcome.find(params[:id])
  end

  def new
    @welcome = Welcome.new
  end

  def create
    @welcome = Welcome.new(welcome_params)
    @welcome.save
    redirect_to @welcome
  end

  def update
    @welcome = Welcome.find(params[:id])
    @welcome.update(welcome_params)
    redirect_to @welcome
  end
  
  def destroy
    @welcome = Welcome.find(params[:id])
    @welcome.destroy
    redirect_to @welcome
  end

  private
  def welcome_params
    params.require(:welcome).permit(:First_name, :last_name, :email, :user, :password)
  end
  
end
