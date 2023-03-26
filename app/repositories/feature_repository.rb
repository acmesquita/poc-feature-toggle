class FeatureRepository
  def self.find_by_flag(flag)
    Feature.find_by(flag: flag)
  end
end
