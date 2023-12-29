class PetsController < ApplicationController
  def create
    # p "*" * 88
    # p current_user
    # p "*" * 88
    if current_user
      @pet = Pet.new(
        name: params[:name],
        age: params[:age],
        breed: params[:breed]
      )
      @pet.save
      render json: {message: "in create"}
    else
      render json: {message: "you must be logged in"}
    end
  end
end
