class V1::ProductsController < ApplicationController
  
  def index 

    p "*" * 50
    p current_user
    p "*" * 50
    search_term = params[:search]
    sort_by_price = params[:sort_price]

    if sort_by_price == 'true'
      products = Product.order(:price).where("name LIKE ?", "%#{search_term}%")
    else
      products = Product.order(:id).where("name LIKE ?",
        "%#{search_term}%")
    end
    render json: products.as_json
  end

  def show
    the_id = params[:the_id]
    product = Product.find_by(id: the_id)
    render json: product.as_json 
  end

  def create
    product = Product.new(
      name: params[:name],
      price: params[:price],
      image_url: params[:image_url],
      description: params[:description],
      in_stock: params[:in_stock],
      supplier_id: params[:supplier_id]
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

