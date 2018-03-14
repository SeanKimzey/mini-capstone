class V1::ProductsController < ApplicationController
  
  def index 
    products = Product.all
    render json: products.as_json
  end

  def show
    the_id = params[:id]
    product = Product.find_by(id: the_id)
    render json: product.as_json 
  end

  def create
    product = Product.new(
      name: params[:name],
      price: params[:price],
      image_url: params[:image_url],
      description: params[:description])
    if product.save
      render json: product.as_json
    else
      render json: {errors: product.erorrs.full_messages}, status: :unprocessible_entity
    end
  end

  def update
    the_id = params[:id]
    product = Product.find_by(id: the_id)
    product.update()
  end

  def destroy
   
    the_id = params[:id]
    product1 = Product.find_by(id: the_id)
    product1.destroy
    render json: {message: "You deleted this product"}
  end

end

