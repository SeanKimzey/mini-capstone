class V1::CartedProductsController < ApplicationController

  def index
    carted_products = current_user.carted_products.where(status: "carted")
    render json: carted_products.as_json
  end

  def create
    product = Product.find_by(id: params[:product_id])

    carted_product = CartedProduct.new(
    user_id: current_user.id,
    product_id:params[:product_id],
    quantity:params[:quantity],
    status: "carted",
    )
    carted_product.save
    render json:{message: "You added this product"}
  end

  def destroy
    carted_product = CartedProduct.find_by(id: params[:id])
    carted_product.update(status: "removed")
    carted_product.save
    render json: {message: "You removed this product from your cart"}
  end
end




