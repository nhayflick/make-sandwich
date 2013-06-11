require 'test_helper'

class CondimentTest < ActiveSupport::TestCase
  test "empty condiment record won't save" do
    condiment = Condiment.new
    assert !condiment.save, "Saved an empty condiment record"
  end

  test "a full condiment record will save" do
    condiment = Condiment.new(name: "ketchup")
    assert condiment.save, "Condiment record with all fields couldn't save"
  end
end
