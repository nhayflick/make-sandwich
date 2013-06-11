class OrdersController < ApplicationController
  def new
    @order = Order.new
    # OrderCondiment.condiment_options.length.times {@order.order_condiments.build}
  end

  def create
    @order = Order.new(params[:order])
    if @order.save
      OrderMailer.order_email(@order).deliver
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
