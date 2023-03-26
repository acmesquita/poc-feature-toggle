require "test_helper"

class ResourceTest < ActiveSupport::TestCase
  test "create new resource valid" do
    sut = Resource.new(uid: '123')

    assert sut.save
  end

  test "no create resource with invalid params" do
    assert_raises(ActiveRecord::RecordInvalid) do
      sut = Resource.new()
      sut.save!
    end
  end
end
