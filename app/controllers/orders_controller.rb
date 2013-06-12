class OrdersController < ApplicationController
  def new
    @order = Order.new
  end

  def create
    @order = Order.new(params[:order])
    if @order.save
      # Pulls a random quote from the DB
      @quote = Quote.offset(rand(Quote.count)).first
      OrderMailer.order_email(@order, @quote).deliver
      redirect_to @order, :flash => { :success => "Yum! Your order has been submitted!" }
    else
      puts @order.errors
      flash.now[:notices] = @order.errors.full_messages.to_sentence
      render :new
    end
  end

  def show
    @order = Order.find(params[:id])
  end

  def index
    @orders = current_user.orders
  end
end
