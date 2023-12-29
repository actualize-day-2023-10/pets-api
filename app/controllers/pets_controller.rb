class PetsController < ApplicationController
  def index
    # @pets = Pet.all
    @pets = current_user.pets
    render :index
  end
  
  def create
    # p "*" * 88
    # p current_user
    # p "*" * 88
    if current_user
      @pet = Pet.new(
        name: params[:name],
        age: params[:age],
        breed: params[:breed],
        user_id: current_user.id
      )
      @pet.save
      render :show
    else
      render json: {message: "you must be logged in"}
    end
  end
end
