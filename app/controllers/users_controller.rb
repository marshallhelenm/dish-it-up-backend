class UsersController < ApplicationController

    def index
        users = User.all
        render :json => users
    end

    def show
    end

    def login
        found_user = User.where ("username = '#{params[:username]}'")
        if (found_user.length > 0)
            found_user = found_user[0]
            render json: {
                message: "User # #{found_user.id} Found",
                user_id: found_user.id
            }
        else
            new_user = User.create({
                username: params[:username]
            })
            render json: {
                message: "User # #{new_user.id} Created",
                user_id: new_user.id
            }
        end
    end

end
