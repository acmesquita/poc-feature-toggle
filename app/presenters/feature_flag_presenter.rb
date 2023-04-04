class FeatureFlagPresenter
  def initialize(feature)
    @feature = feature
  end

  def as_json(*)
    {
      flag: @feature.flag,
      value: @feature.value
    }
  end
end