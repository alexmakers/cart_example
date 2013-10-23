class ProductsController < ApplicationController

  def new
    @product = Product.new
  end

  def create
    @product = Product.create(params[:product]
                              .permit(:name, :image))
    redirect_to @product

  rescue AWS::S3::Errors::RequestTimeout
    flash[:notice] = "Upload timed out"
    redirect_to 'new'
  end

  def show
    @product = Product.find params[:id]
  end
end
