class ListAllFeaturesPresenter
  def initialize(features)
    @features = features
  end

  def call
    @features.map { |feature| { flag: feature.flag, resources_count: feature.feature_resources.count }}
  end
end