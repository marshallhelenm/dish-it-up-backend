class UsersController < ApplicationController

    def index
        users = User.all
        render :json => users
    end

    def show
      user = User.find(params[:user_id])
      render :json => user
    end

    def create
        
        @user = User.create(username: params[:username], password: params[:password])
        if @user.valid?
          render json: @user, status: :created
        else
          render json: { error: 'failed to create user' }, status: :not_acceptable
        end

    end 

    def update
      user = User.find(params[:user_id])
      user.img_url = params[:url]
      user.save
      render :json => user
    end
      

    private
      def user_params
        params.require(:user).permit(:username, :password)
      end
      

end
