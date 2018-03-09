class V1::ProductsController < ApplicationController
  def index 
    product = Product.all
    render json: product.as_json
  end

  def show
    the_id = params[:id]
    product = Product.find_by(id: the_id)
    render json: product.as_json
  end

  def create
    product1 = Product.new(
      name: params[:input_name], 
      price: params[:input_price],
      description: params[:input_description])

    product1.save

    render json: product1.as_json
   
  end

  def update
    the_id = params[:id]
    product = Product.find_by(id: the_id)
    product.update()
  end
  # def product_one
  #   product = Product.first
  #   render json: product.as_json
  # end

  # def any
    
  #   user_input = params[:id]
  #   p user_input
  #   product_user = Product.find_by(id: user_input)
  #   render json: product_user.as_json
  # end

end
