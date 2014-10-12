class VendorsController < ApplicationController

  def new_vendor
    @vendor=Vendor.new
  end

  def create
    @vendor = Vendor.new(vendor_params)
    @vendor.save
    session[:v_id] = @vendor.id
    redirect_to "/vendor/#{@vendor.id}/vendor_landing"
  end

  def vendor_landing
    @vendor=Vendor.find(params[:id])
  end
  

  def update
    @vendor=Vendor.find(params[:id])
    if @vendor.update(vendor_params)
      redirect_to "/vendor/#{@vendor.id}/vendor_landing"
    else
      render :edit
    end
  end

  def edit
    @vendor= Vendor.find(params[:id])
  end

  def destroy
    @vendor = Vendor.find(params[:id])
    @vendor.destroy
    redirect_to "/"
  end

  def destroy_landing
    @vendor=Vendor.find(params[:id])
  end

  private

  def vendor_params
    params.require(:vendor).permit(:name)
  end

end
