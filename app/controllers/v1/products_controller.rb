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
    product2 = Product.new(name: "FINALTEST", price: 40, image_url: "hi", description: "cool stuff here")

    product2.save

    render json: product2.as_json
   
  end

  def update
    the_id = params[:id]
    product = Product.find_by(id: the_id)
    product.update()
  end

end
