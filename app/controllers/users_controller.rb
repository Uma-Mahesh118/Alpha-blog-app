class UsersController < ApplicationController
    before_action :set_user, only: [:show, :edit, :update, :destroy]
    before_action :require_user, only: [:edit, :update]
    before_action :req_same_user, only: [:edit, :update, :delete]
    def new
        @user= User.new
    end
    def index
        @users= User.paginate(page: params[:page], per_page: 3)
    end
    def show
        @articles= @user.articles.paginate(page: params[:page], per_page: 3)
    end    

    def edit 
    end

    def update
        if @user.update( user_params )
            flash[:notice]= 'Your Account Information Updated Scuccesfully'
            redirect_to user_path(@user)
        else
            render 'edit'
            
        end
    end

    def create
        @user = User.new(user_params)
        if @user.save
            session[:user_id] = @user.id
            flash[:notice] = "Welcome to Alpha blog #{@user.username}, you have succesfully signed up"
            redirect_to users_path
        else
            render 'new'
        end
    end   
    def destroy
        @user.destroy
        session[:user_id] =nil
        flash[:notice] = "Account and all articles associated are deleted"
    end

    def destroy
        @user = User.find(params[:id])
        @user.destroy
        session[:user_id] =nil
        respond_to do |format|
            format.html { redirect_to users_path notice: 'Account is successfully deleted.' }
            format.json { head :no_content }
        end
    end


    private

    def user_params
        params.require(:user).permit(:username, :email, :password)
    end
    def set_user
        @user= User.find(params[:id])
    end
    def req_same_user
        if current_user != @user
            flash[:alert] = "You can only edit your own profile"
            redirect_to @user
        end
    end

end
