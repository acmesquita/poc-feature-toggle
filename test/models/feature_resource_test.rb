require "test_helper"

class FeatureResourceTest < ActiveSupport::TestCase
  test "create new resource valid" do
    feature = Feature.new(flag: 'new_page')
    resource = Resource.new(uid: '123')

    sut = FeatureResource.new(
      feature: feature,
      resource: resource
    )

    assert sut.value
    assert sut.save
  end

  test "no create feature resource with invalid params" do
    assert_raises(ActiveRecord::RecordInvalid) do
      sut = FeatureResource.new(
        feature: nil,
        resource: nil
      )
      sut.save!
    end
  end
end
