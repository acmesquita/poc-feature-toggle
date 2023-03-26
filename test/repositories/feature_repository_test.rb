require 'test_helper'

class FeatureRepositoryTest < ActiveSupport::TestCase
  ## FeatureRepository.find_by_flag
  test "find feature by flag" do
    Feature.create(flag: 'flag')

    result = FeatureRepository.find_by_flag('flag')

    assert_equal 'flag', result.flag
  end

  test "not found feature by flag" do
    Feature.create(flag: 'flag')

    result = FeatureRepository.find_by_flag('invalid_flag')

    assert_nil result
  end

  ## FeatureRepositoryTest.create
  test "create feature with valid params" do
    result = FeatureRepository.create('flag')

    assert result.id
  end

  test "no create feature with valid inparams" do
    result = FeatureRepository.create(nil)

    assert_not result.id
  end
end
