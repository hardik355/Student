class SessionsController < ApplicationController
  
  #  http_basic_authenticate_with email: "kapspatel355@gmail.com", password: "0988"
  # email, password = "kapspatel355@gmail.com", "0988"
  # before_filter :authenticate, :only => [ :new ]
   
  layout "test1"
  # render "welcomes/show"

  def new
  end

  def edit
    @session = Register.find(params[:id])
  end

  def show  
    @session = Register.find(params[:id])
  end

  def create
    user = Register.find_by_email(params[:email])
      if user && Register.find_by_password(params[:password])
        session[:user_id] = user.id
        redirect_to session_path(user.id), notice: "Login in succesfully !"
       else
        flash.now.alert = "Email or password is invalid."
     end
  end

  def destroy
    session[:user_id] = nil
    session.destroy
    redirect_to new_session_path, notice: 'Log out succesfully !'
  end 
  
  def update
    @register = Register.find(params[:id])
    @register.update(register_params)
    redirect_to session_path
  end
  

  private
  # def authenticate
  #   authenticate_or_request_with_http_basic do |id, password| 
  #     email == email && password == password
  #   end
  # end

  # def authenticate
  #   authenticate_or_request_with_http_digest do |email, password|
  #     USERS[email, password]
  #   end
  # end

  def register_params
    params.require(:register).permit(:first_name, :last_name, :email, :city, :area, :mobile_no, :password)
  end
end

  