class OrdersController < ApplicationController
  def new
    @order = Order.new
    # new.js
    # respond_to do |format|
    #   format.html { render :action => 'new' }
    #   format.js { render :action => 'new' }
    # end
  end

  def create
    @order = Order.new(params[:order])
    if @order.save
      redirect_to @order
    else
      puts @order.errors.inspect
      render :new
    end
  end

  def show
    @order = Order.find(params[:id])
  end
end
