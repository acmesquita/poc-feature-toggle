class FindFeature < BaseService
  validates_presence_of :feature_id

  attr_reader :feature_id

  def self.perfom(params)
    self.new(params).perform
  end

  def initialize(params)
    @feature_id = params[:id]
  end

  def perform
    FeatureRepository.find(feature_id)
  end
end