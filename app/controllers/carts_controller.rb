class CartsController < ApplicationController
  def update
    current_cart.products << product
    redirect_to product_path(product)
  end
