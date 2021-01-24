class IngredientsController < ApplicationController
    before_action :set_ingreditent, only: [:show, :edit, :update]

    def show 
    end 

    def index
        @ingredients = Ingredient.all 
    end 

    def new
        @ingredient = Ingredient.new 
    end 

    def create 
        @ingredient = Ingredient.create(ingredient_params)
        redirect_to ingredient_path(@ingredient)
    end 

    def edit 
    end 

    def update 
        @ingredient = Ingredient.update(ingredient_params)
        redirect_to ingredient_path(@ingredient)
    end 

    private 
    
    def set_ingreditent
        @ingredient = Ingredient.find(params[:id])
    end 

    def ingredient_params
        params.require(:ingredient).permit(:name)
    end 


end
