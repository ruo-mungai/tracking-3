class UsersController < ApplicationController
    skip_before_action :authorize, only: :create


    def index
      render json: User.all, status: :ok
    end
  

    def create
      user = User.create!(user_params)
      session[:user_id] = user.id
      render json: user, status: :created
    end
  
    def show
      render json: @current_user
    end

      def update
  if
      @user.update(user_params)
      render json: @user
  else
      render json: @user.errors, status: :unprocessable_entity
  end
  end

     # DELETE /users/1
    def destroy
        res = User.find(params[:id])
        res.destroy
        head :no_content
    end
    
  
    private
  
    def user_params
      params.permit(:username, :password, :password_confirmation,:role, :cohort_id)
    end
end