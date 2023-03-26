require 'test_helper'

class ListAllFeaturesTest < ActiveSupport::TestCase
  test 'return empty when not found features' do
    result = ListAllFeatures.perfom

    assert_empty result
  end

  test 'return list feature' do
    Feature.create(flag: 'flag')
    result = ListAllFeatures.perfom

    assert_equal [{ flag: 'flag', resources_count: 0 }], result
  end
end