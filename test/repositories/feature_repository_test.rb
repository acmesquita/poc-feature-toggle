require 'test_helper'

class FeatureRepositoryTest < ActiveSupport::TestCase
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
end
