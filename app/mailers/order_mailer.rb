class OrderMailer < ActionMailer::Base
  default from: "nhayflick@gmail.com"

    def order_email(order)
      @order = order
      mail(:to => "nhayflick@gmail.com", :subject => "Order #"+order.id.to_s)
    end
end
