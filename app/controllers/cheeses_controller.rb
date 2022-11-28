class CheesesController < ApplicationController
  #The Only and Expect options are available thanks to 
  #the .as_json method, which Rails uses internally when
  #we call render json with an Active Record object 
  # GET /cheeses
  #taking some custom built-in-serialization
  def index
    cheeses = Cheese.all
    render json: cheeses, only: [:id, :name, :price, :is_best_seller]
  end

  # GET /cheeses/:id
  # Before Taking advantage of some custom built-in-serialization
  def show
    cheese = Cheese.find_by(id: params[:id])
    render json: cheese, except: [:created_at, :updated_at], methods: [:summary]
  end


end
