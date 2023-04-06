class CreateFeature < BaseService
  validates_presence_of :flag

  attr_reader :flag, :resource_ids

  def self.perfom(params)
    new(params).perfom
  end

  def initialize(params)
    @flag = params[:flag]
    @resource_ids = params[:resource_ids]

    validate!
  end

  def perfom
    feature = FeatureRepository.find_or_create(flag)
    FeatureResourceRepository.add_resources_to_feature!(feature, resource_ids.split(','))
    feature
  end
end