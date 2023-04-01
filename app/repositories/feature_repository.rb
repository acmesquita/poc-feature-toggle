class FeatureRepository
  def self.create(flag)
    Feature.create(flag: flag)
  end

  def self.find_by_flag(flag)
    Feature.find_by(flag: flag)
  end

  def self.find_all
    Feature.all
  end

  def self.find(id)
    Feature.find(id)
  end
end
