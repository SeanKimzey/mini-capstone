class ProductsController < ApplicationController
  def every_product
    product = Product.all
    render json: product.as_json
  end
  def product_one
    product = Product.first
    render json: product.as_json
  end
end
