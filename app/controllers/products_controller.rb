class ProductsController < ApplicationController
  def index
    @products = Product.all.order(:photo_file_name)
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.create(product_params)

    redirect_to product_path(@product)
  end

  def show
    @product = Product.find_by(id: params[:id])
  end

  private

  def product_params
    params.require(:product).permit(:photo, :photo_image_size)
  end
end
