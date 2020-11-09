require 'test_helper'

class EmTest < ActiveSupport::TestCase
  test "activerecord model working as expected" do
    assert Em.create(mane: "first em")
    assert Em.where(mane: "first em").count == 1
  end

  test "join table working as expected" do
    en = En.create(name: "enn")

    em = Em.new
    em.mane = "mm"
    em.ens << en

    assert em.save
    assert_includes Em.find_by_mane("mm").ens, en
  end

  test "join table goes both ways as expected" do
    en = En.create(name: "nen")

    em = Em.new
    em.mane = "mmm"
    em.ens << en

    assert em.save
    assert_includes En.where(ems: Em.where(mane: "mmm")), en
  end
end
