class ListAllFeatures
  def self.perfom
    FeatureRepository.find_all
  end
end