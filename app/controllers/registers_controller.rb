class RegistersController < ApplicationController
before_action :require_login, only: [:show, :edit, new]

  # render :templete => "sessions/new"
  # render plain: "Example"  
  layout :registers_layout
  layout false
  
  def index
    @registers = Register.all
  end

  def show  
     @register = Register.find(params[:id])
  end

  def edit
    @register = Register.find(params[:id])
  end

  def new
    @register = Register.new
  end

  def create
    @register = Register.new(register_params)
    @register.save
    redirect_to @register
  end

  def update
    @register = Register.find(params[:id])
    if @register.update(register_params)
      redirect_to @register
    else
      render :edit
    end
  end
  
  def destroy
    @register = Register.find(params[:id])
    @register.destroy
    redirect_to @register
  end

  private
  def require_login
    unless session[:user_id].present?
      flash[:error] = "You must be logged in to access this section"
      redirect_to new_session_path # halts request cycle
    end
  end

  def register_params
    params.require(:register).permit(:first_name, :last_name, :email, :city, :area, :mobile_no, 
    :password)
  end
end






