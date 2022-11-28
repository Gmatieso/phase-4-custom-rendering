class CheesesController < ApplicationController

  # GET /cheeses
  #taking some custom built-in-serialization
  def index
    cheeses = Cheese.all
    render json: cheeses, only: [:id, :name, :price, :is_best_seller]
  end

  # GET /cheeses/:id
  #Before Taking advantage of some custom built-in-serialization
  # def show
  #   cheese = Cheese.find_by(id: params[:id])
  #   render json: {
  #   id: cheese.id,
  #   name: cheese.name,
  #   price: cheese.price,
  #   is_best_seller: cheese.is_best_seller
  # }
  # end

  
  # def show
  #   cheese = Cheese.find_by(id: params[:id])
  #   render json: {
  #   id: cheese.id,
  #   name: cheese.name,
  #   price: cheese.price,
  #   is_best_seller: cheese.is_best_seller
  # }
  # end

end
