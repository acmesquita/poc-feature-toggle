class DisconectResourceToFeature
  def self.perfom(params)
    return false if params[:feature_id].blank? || params[:uid].blank?

    resource = ResourceRepository.find_by_uid(params[:uid])

    FeatureResourceRepository.disconect_resource_to_feature(params[:feature_id], resource.id)
  end
end