class OrderMailer < ActionMailer::Base
  default from: "nhayflick@gmail.com"

    def order_email(order, quote)
      @order = order
      @quote = quote
      mail(:to => "nhayflick@gmail.com", :subject => "Order #"+order.id.to_s)
    end
end
