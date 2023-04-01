class FeatureResourceRepository
  def self.create(feature_id, resource_id)
    resource = Resource.create(uid: resource_id)
    FeatureResource.create(feature_id: feature_id, resource: resource)
  end
end