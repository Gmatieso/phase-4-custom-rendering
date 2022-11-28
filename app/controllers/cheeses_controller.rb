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
  #Basic Error Messaging when Rendering JSON Data 
  def show
    cheese = Cheese.find_by(id: params[:id])
    if cheese
      render json: cheese, except: [:created_at, :updated_at], methods: [:summary]
    else
      # status: :not_found will produce a 404 status code
      render json: { error: 'Cheese not found' }, status: :not_found
    end
  end
end
