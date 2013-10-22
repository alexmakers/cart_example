class ProductsController < ApplicationController
  def show
    @product = Product.find params[:id]
    @cart = current_cart
  end
end
