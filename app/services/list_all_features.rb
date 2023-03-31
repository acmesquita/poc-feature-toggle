class ListAllFeatures
  def self.perfom
    features = FeatureRepository.find_all

    ::ListAllFeaturesPresenter.new(features).call
  end
end