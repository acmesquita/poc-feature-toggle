require "test_helper"

class FeatureTest < ActiveSupport::TestCase
  test "create new feature valid" do
    sut = Feature.new(flag: 'new_page')

    assert sut.save
  end

  test "no create feature with invalid params" do
    assert_raises(ActiveRecord::RecordInvalid) do
      sut = Feature.new()
      sut.save!
    end
  end
end
