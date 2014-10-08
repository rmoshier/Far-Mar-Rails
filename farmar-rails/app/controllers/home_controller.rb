class HomeController < ApplicationController
  def index
  end

 # def new_vendor
  #  @vendor=Vendor.new
 # end

  #def create 
    # if this name already exists
   # if Vendor.find_by(:name)
      # puts "Oops! You already exist. Try logging in."
      # make annoying popup
      # redirect_to "/"
      #exit the fxn
    #else
     # @vendor = Vendor.new(params.require(:vendor).permit(:name))
      #@vendor.save
      #session[:v_id] = @vendor.id
    # to log-out set session v_id to nil 
     # redirect_to "/home/vendor_landing"
    # redirect_to root_path
    #end
  #end

 # def vendor_landing
  #  @v = Vendor.find(session[:v_id])
  #end
end


