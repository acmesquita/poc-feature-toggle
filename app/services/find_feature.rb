class FindFeature
  def self.perfom(feature_id)
    FeatureRepository.find(feature_id)
  end
end