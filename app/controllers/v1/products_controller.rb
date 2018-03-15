class V1::ProductsController < ApplicationController

# Inside your mini-capstone, add the following features:
# • Change the index action to always return products sorted by id.
# • Change the index action to allow for searching by name.
# • Add an option to the frontend to search by a product’s name.
# • Bonus: Change the index action to allow for sorting by price. Add a frontend option to see the results.
  
  def index 
    search_by = params[:name]
    products = Product.all.order(:id).where("name LIKE ?","#{search_by}")
    render json: products.as_json
  end

  def show
    the_id = params[:THE_ID]
    product = Product.find_by(id: the_id)
    render json: product.as_json 
  end

  def create
    product = Product.new(
      name: params[:name],
      price: params[:price],
      image_url: params[:image_url],
      description: params[:description],
      in_stock: params[:in_stock]
      )
    if product.save
      render json: product.as_json
    else
      render json: {errors: product.errors.full_messages}, status: :unprocessible_entity
    end
  end

  def update
    product = Product.find(params[:id])

    product.name = params[:name] 
    product.description = params[:description]
    product.in_stock = params[:in_stock] 
    product.price = params[:price] 
    product.image_url = params[:image_url] 

    if product.save
      render json: product.as_json
    else
      render json: {errors: product.errors.full_messages}
    end
  end

  def destroy
    the_id = params[:id]
    product1 = Product.find_by(id: the_id)
    product1.destroy
    render json: {message: "You deleted this product"}
  end


end

