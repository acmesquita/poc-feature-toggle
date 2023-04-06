class DisconectResourceToFeature < BaseService
  validates_presence_of :feature_id, :uid

  attr_reader :feature_id, :uid

  def self.perfom(params)
    new(params).perfom
  end

  def initialize(params)
    @feature_id = params[:feature_id]
    @uid = params[:uid]
  end

  def perfom
    resource = ResourceRepository.find_by_uid(@uid)

    FeatureResourceRepository.disconect_resource_to_feature(@feature_id, resource.id)
  end
end