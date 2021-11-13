class ProductsController < ApplicationController
  def show
    id = params[:id]
    @product = Product.find(id)
  end

  def create
    @product = Product.create!(product_params)
    flash[:notice] = "#{@product.name} was successfully created."
    redirect_to products_path
  end

  def update
    @product = Product.find params[:id]
    @product.update_attributes!(product_params)
    flash[:notice] = "#{@product.name} was successfully updated."
    redirect_to products_path(@product)
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    flash[:notice] = "Product '#{@product.name}' deleted."
    redirect_to products_path
  end
    
  def edit
    @product = Product.find params[:id]
  end

  def index
    @products = Product.all
  end
    
  def new
  end

  # def buy
  #   @product = Product.find(params[:id])
  #   count=@product[:buy_count]
  #   if count==nil
  #       count=0
  #   end
  #   @product[:buy_count]=count+1
  #
  #   flash[:notice] = "You buy product '#{@product.name}' successfully!."
  #   redirect_to '/products/'+params[:id]
  # end
    
  def product_params
    params.require(:product).permit(:product_id, :name, :seller_id, :brand, :price, :weight, :color, :discount, :category, :box, :created_at, :updated_at, :buy_count, :avatar)
  end
end
