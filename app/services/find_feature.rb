class FindFeature < BaseService
  validates_presence_of :feature_id

  attr_reader :feature_id

  def self.perfom(feature_id)
    self.new(feature_id).perform
  end

  def initialize(feature_id)
    @feature_id = feature_id
  end

  def perform
    FeatureRepository.find(feature_id)
  end
end