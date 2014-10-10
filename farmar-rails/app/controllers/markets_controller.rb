class MarketsController < ApplicationController

  def new_market
    @market = Market.new
  end

  def create
    @market = Market.new(market_params)
    #  need to put the market id into the vendor
    # katie helped with this line above -- need to make sure we understand!
    if @market.save
      Vendor.update(session[:v_id], market_id: @market.id)
      redirect_to "/vendor/#{session[:v_id]}/vendor_landing"
    else
      redirect_to "/market/new_market"
    end
  end

private

  def market_params
    params.require(:market).permit(:name)
  end

  # def product_list
  #   @products = Product.all
  #   #@product.vendor_id = session[:v_id]
  # end
  #
  # def edit
  #   @product = Product.find(params[:id])
  # end
  #
  # def update
  #   @product=Product.find(params[:id])
  #   if @product.update(product_params)
  #     redirect_to "/product/#{@product.vendor_id}/product_list"
  #   else
  #     render :edit
  #   end
  # end
  #
  # def destroy
  #   @product = Product.find(params[:id])
  #   @holder = @product.vendor_id
  #   @product.destroy
  #   redirect_to "/product/#{@holder}/product_list"
  # end
  #
  # def destroy_landing
  #   @product=Product.find(params[:id])
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

end
