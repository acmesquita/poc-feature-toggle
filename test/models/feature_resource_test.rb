require "test_helper"

class FeatureResourceTest < ActiveSupport::TestCase
  test "create new resource valid" do
    feature = Feature.create(flag: 'new_page')
    resource = Resource.create(uid: '123')

    sut = FeatureResource.new(
      feature: feature,
      resource: resource
    )

    assert sut.value
    assert sut.save!
  end

  test "no create feature resource with invalid params" do
    assert_raises(ActiveRecord::RecordInvalid, ActiveRecord::NotNullViolation) do
      sut = FeatureResource.new(
        feature: nil,
        resource: nil
      )
      sut.save!
    end
  end
end
