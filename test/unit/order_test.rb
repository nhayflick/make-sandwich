require 'test_helper'

class OrderTest < ActiveSupport::TestCase
  test "empty order won't save" do
    order = Order.new
    assert !order.save, "Saved an empty post"
    end

  test "order with missing attribute won't save" do
    order = Order.new(bread: 'wheat', meat: 'chicken')
    assert !order.save, "Saved a sandwich order with no cheese selected"
  end

  test "order with all attributes saves correctly" do
    order = Order.new(bread: 'wheat', meat: 'chicken', cheese: 'havarti')
    assert order.save, "Couldn't save a sandwich order with all fields included"
  end

end
