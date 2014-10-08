class HomeController < ApplicationController
  def index
  end

  def new_vendor
    @vendor=Vendor.new
  end

  def create
    @vendor = Vendor.new(params.require(:vendor).permit(:name))
    @vendor.save
    redirect_to "/home/vendor_landing"
    # redirect_to root_path
  end

  def vendor_landing
  end

end
