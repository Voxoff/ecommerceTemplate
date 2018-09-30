require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  test "needs a name" do
    products(:one).name = nil
    assert_nil products(:one).name
    assert_equal false, products(:one).valid?
  end
end
