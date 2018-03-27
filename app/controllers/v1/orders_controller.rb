class V1::OrdersController < ApplicationController


  # def create
  #   product = Product.find_by(id: params[:product_id])
  #   calculated_subtotal = params[:quantity].to_i * product.price
  #   tax_rate = 0.09
  #   calculated_tax = calculated_subtotal * tax_rate
  #   calculated_total = calculated_subtotal + calculated_tax

  #   order = Order.new(
  #   user_id: current_user.id,
  #   product_id: params[:product_id],
  #   quantity: params[:quantity],
  #   subtotal: calculated_subtotal,
  #   tax: calculated_tax,
  #   total: calculated_total
  #   )

  #   order.save
  #   render json: order.as_json
     
  # end

  def create
    carted_products = current_user.carted_products.where(status: "carted")
    calculated_subtotal = 0
    carted_products.each do |carted_product|
      calculated_subtotal += carted_product.quantity * carted_product.product.price
    end

    p calculated_subtotal
    render json: {subtotal: calculated_subtotal}

  end

end
