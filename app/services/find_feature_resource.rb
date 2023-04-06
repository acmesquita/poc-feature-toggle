class FindFeatureResource < BaseService
  validates_presence_of :flag, :resource_id

  attr_reader :flag, :resource_id

  def self.perform(params)
    self.new(params).perform
  end

  def initialize(params)
    @flag = params[:flag]
    @resource_id = params[:resource_id]
  end

  def perform
    default_feature = ActiveSupport::InheritableOptions.new({ flag: flag, value: false})
    FeatureResourceRepository.find_by(flag, resource_id) || default_feature
  end
end