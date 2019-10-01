class UsersController < ApplicationController

    def index
        users = User.all
        render :json => users
    end

    def show
    end

    def create
        byebug
        @user = User.create(username: params[:username], password: params[:password])
        if @user.valid?
          render json: @user, status: :created
        else
          render json: { error: 'failed to create user' }, status: :not_acceptable
        end

    end 
      
    # def login
    #     found_user = User.where ("username = '#{params[:username]}'")
    #     if (found_user.length > 0)
    #         found_user = found_user[0]
    #         render json: {
    #             message: "User # #{found_user.id} Found",
    #             user_id: found_user.id
    #         }
    #     else
    #         new_user = User.create({
    #             username: params[:username]
    #         })
    #         render json: {
    #             message: "User # #{new_user.id} Created",
    #             user_id: new_user.id
    #         }
    #     end
    # end

    private
      def user_params
        params.require(:user).permit(:username, :password)
      end
      

end
