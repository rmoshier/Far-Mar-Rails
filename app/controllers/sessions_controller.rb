class SessionsController < ApplicationController

  def update
    vendor = Vendor.find(params[:vendor][:id])
    session[:v_id] = vendor.id
    redirect_to "/vendor/#{session[:v_id]}/vendor_landing"
  end

  def clear
    reset_session
    redirect_to "/"
  end

end
