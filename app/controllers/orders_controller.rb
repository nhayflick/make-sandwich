class OrdersController < ApplicationController
  def new
    @order = Order.new
    # OrderCondiment.condiment_options.length.times {@order.order_condiments.build}
  end

  def create
    @order = Order.new(params[:order])
    if @order.save
      OrderMailer.order_email(@order).deliver
      redirect_to @order, :flash => { :success => "Yum! Your order has been submitted!" }
    else
      puts @order.errors
      # flash.now[:notices] ||= []
      flash.now[:notices] = @order.errors.full_messages.to_sentence
      render :new
    end
  end

  def show
    @order = Order.find(params[:id])
  end
end
