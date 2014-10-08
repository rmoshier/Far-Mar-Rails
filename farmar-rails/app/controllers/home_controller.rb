class HomeController < ApplicationController
  def index
  end

  def new_vendor
    @vendor=Vendor.new
  end

  def create
    @vendor = Vendor.new(params.require(:vendor).permit(:name))
    @vendor.save
    session[:v_id] = @vendor.id
    # to log-out set session v_id to nil
    # maybe do a conditional here?

    redirect_to "/home/vendor_landing"
    # redirect_to root_path
  end

  def vendor_landing
    @v = Vendor.find(session[:v_id])
  end

end
