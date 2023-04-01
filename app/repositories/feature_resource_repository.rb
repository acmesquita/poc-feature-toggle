class FeatureResourceRepository
  def self.create(feature_id, resource_id)
    resource = Resource.create(uid: resource_id)
    FeatureResource.create(feature_id: feature_id, resource: resource)
  end

  def self.disconect_resource_to_feature(feature_id, resource_id)
    FeatureResource.find_by(feature_id: feature_id, resource_id: resource_id).destroy
  end
end