require 'test_helper'

class EnTest < ActiveSupport::TestCase
  test "activerecord model working as expected" do
    assert En.create(name: "first en")
    assert En.where(name: "first en").count == 1
  end
end
