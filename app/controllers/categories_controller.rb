class CategoriesController < ApplicationController
    before_action :set_category, only: [:show, :edit, :update]
    before_action :require_admin, except: [:show, :index]
    def new
        @category= Category.new
    end

    def index
        @categories= Category.paginate(page: params[:page], per_page: 3)
    end

    def show
    end

    def create
        @category= Category.new(category_params)
        if @category.save
            flash[:notice] = "Category created Succesfully"
            redirect_to @category
        else
            render 'new'       
        end
    end

    def edit

    end

    def update
        if @category.update( category_params )
            flash[:notice]= 'Update Scuccesful'
            redirect_to category_path(@category)
        else
            render 'edit'
        end
    end

    private

    def set_category
        @category = Category.find(params[:id])
    end

    def category_params
      params.require(:category).permit(:name)
    end
    def require_admin
        if !( logged_in? && current_user.admin? )
            flash[:alert] = 'Only admins can perform that action'
            redirect_to categories_path
        end
    end
end
