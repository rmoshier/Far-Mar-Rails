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

  private

  def product_params
    params.require(:product).permit(:name)
  end

  # def new_vendor
  #   @vendor=Vendor.new
  # end
  #
  # def create
  #   @vendor = Vendor.new(vendor_params)
  #   @vendor.save
  #   #session[:v_id] = @vendor.id
  #   redirect_to "/vendor/#{@vendor.id}/vendor_landing" #maybe want to take this out?
  # end
  #
  # def vendor_landing
  #   #@v = Vendor.find(session[:v_id])
  #   @vendor=Vendor.find(params[:id])
  #   #redirect_to "/vendor/#{@vendor.id}/vendor_landing"
  # end
  #
  # def update
  #   @vendor=Vendor.find(params[:id])
  #   if @vendor.update(vendor_params)
  #     redirect_to "/vendor/#{@vendor.id}/vendor_landing"
  #   else
  #     render :edit
  #   end
  # end
  #
  # def edit
  #   @vendor= Vendor.find(params[:id])
  # end
  #
  # def destroy
  #   @vendor = Vendor.find(params[:id])
  #   @vendor.destroy
  #   redirect_to "/"
  # end
  #
  # def destroy_landing
  #   @vendor=Vendor.find(params[:id])
  # end
  #
  # private
  #
  # def vendor_params
  #   params.require(:vendor).permit(:name)
  # end

end
