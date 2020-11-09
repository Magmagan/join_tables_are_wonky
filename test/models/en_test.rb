require 'test_helper'

class EnTest < ActiveSupport::TestCase
  test "activerecord model working as expected" do
    assert En.create(name: "first en")
    assert En.where(name: "first en").count == 1
  end

  test "join table working as expected" do
    em = Em.create(mane: "emm")

    en = En.new
    en.name = "nn"
    en.ems << em

    assert en.save
    assert_includes En.find_by_name("nn").ems, em
  end

  test "join table goes both ways as expected" do
    em = Em.create(mane: "mem")

    en = En.new
    en.name = "nnn"
    en.ems << em

    assert en.save
    assert_includes Em.where(ens: En.where(name: "nnn")), em
  end
end
