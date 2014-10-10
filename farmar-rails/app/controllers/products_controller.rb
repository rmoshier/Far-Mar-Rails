class ProductsController < ApplicationController

  def new_product
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    @product.vendor_id = session[:v_id]
    if @product.save
      redirect_to "/vendor/#{session[:v_id]}/vendor_landing"
    else
      redirect_to "/product/new_product"
    end
  end
  
  def product_list
    @products = Product.all
    #@product.vendor_id = session[:v_id]     
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product=Product.find(params[:id])
    if @product.update(product_params)
      redirect_to "/product/#{@product.vendor_id}/product_list"
    else
      render :edit
    end
  end

  private

  def product_params
    params.require(:product).permit(:name)
  end


  # def destroy
  #   @vendor = Vendor.find(params[:id])
  #   @vendor.destroy
  #   redirect_to "/"
  # end
  #
  # def destroy_landing
  #   @vendor=Vendor.find(params[:id])
  # end

end
