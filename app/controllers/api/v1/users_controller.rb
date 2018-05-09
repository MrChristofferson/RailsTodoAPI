module Api::V1
    class UsersController < ApiController
    before_action :set_user, only: [:show, :update, :destroy] def index
    @users = User.all render json: @users
    end
    def show
    render json: @user
    end
    def create
    @user = User.new(email: params[:user][:email], password: params[:user][:password]) if @user.save
    render
    else
    render
    end end
    def update
    json: @user, status: :created
    json: @user.errors, status: :unprocessable_entity
    if @user.update(user_params) render json: @user, status: :ok
    else
    render json: @user.errors, status: :unprocessable_entity end
    end
    def destroy @user.destroy
    end
    private
    def set_user
    @user = User.find(params[:id])
    end
    def task_params params.require(:user).permit(:email, :password)
    end end 
    end  