require 'test_helper'

class EmTest < ActiveSupport::TestCase
  test "activerecord model working as expected" do
    assert Em.create(mane: "first em")
    assert Em.where(mane: "first em").count == 1
  end
end
