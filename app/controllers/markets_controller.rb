class MarketsController < ApplicationController

  def new_market
    @market = Market.new
  end

  def create
    @market = Market.new(market_params)
    if @market.save
      Vendor.update(session[:v_id], market_id: @market.id)
      redirect_to "/vendor/#{session[:v_id]}/vendor_landing"
    else
      redirect_to "/market/new_market"
    end
  end

  def update
    @market=Market.find(params[:id])
    if @market.update(market_params)
      redirect_to "/vendor/#{session[:v_id]}/vendor_landing"
    else
      render :edit
    end
  end

  def edit
    @holder = Vendor.find(params[:id]).market.id
    @market = Market.find(@holder)
  end

private

  def market_params
    params.require(:market).permit(:name)
  end

end
