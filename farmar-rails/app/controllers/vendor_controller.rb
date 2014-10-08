class VendorController < ApplicationController

  def new_vendor
    @vendor=Vendor.new
  end

  def create
    @vendor = Vendor.new(params.require(:vendor).permit(:name))
    @vendor.save
    session[:v_id] = @vendor.id
    redirect_to "/vendor/vendor_landing"
  end

  def vendor_landing
    @v = Vendor.find(session[:v_id])
  end

end

