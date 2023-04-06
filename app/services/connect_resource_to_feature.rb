class ConnectResourceToFeature < BaseService
  validates_presence_of :id, :resource_ids

  attr_reader :id, :resource_ids

  def self.perfom(params)
    new(params).perfom
  end

  def initialize(params)
    @id = params[:id]
    @resource_ids = params[:resource_ids]

    validate!
  end

  def perfom()
    feature = FeatureRepository.find(id)
    FeatureResourceRepository.add_resources_to_feature!(feature, resource_ids.split(','))
  end
end