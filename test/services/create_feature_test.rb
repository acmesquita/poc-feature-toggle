require 'test_helper'

class CreateFeatureTest < ActiveSupport::TestCase
  test "creating feature with valid params" do
    params = { flag: 'flag' }

    result = CreateFeature.perfom(params)

    assert result.id
  end

  test "no creating feature with invalid params" do
    params = { flag: nil }

    assert_raises(InvalidParamsError) do
      CreateFeature.perfom(params)
    end
  end
end