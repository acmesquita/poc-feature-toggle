class ListAllFeatures
  def self.perfom
    features = Feature.all

    features.map { |feature| { flag: feature.flag, resources_count: feature.feature_resources.count }}
  end
end