class FeatureResourceRepository

  def self.find_by(flag,uid)
    FeatureResource.find_by_sql([
      "SELECT
        features.flag as flag,
        feature_resources.value as value
      FROM
        feature_resources
      INNER JOIN features ON features.id = feature_resources.feature_id
      INNER JOIN resources ON resources.id = feature_resources.resource_id
      WHERE
        features.flag = ? AND resources.uid = ?
      LIMIT 1
      ", flag, uid
    ]).first
  end

  def self.disconect_resource_to_feature(feature_id, resource_id)
    FeatureResource.find_by(feature_id: feature_id, resource_id: resource_id).destroy
  end

  def self.find_or_create(feature_id, uid)
    resource = ResourceRepository.find_by_uid(uid)
    if !resource
      FeatureResourceRepository.create(feature_id, uid)
    else
      FeatureResource.find_by(resource_id: resource.id, feature_id: feature_id) || FeatureResource.create(feature_id: feature_id, resource: resource)
    end
  end

  private

  def self.create(feature_id, uid)
    resource = Resource.create(uid: uid)
    FeatureResource.create(feature_id: feature_id, resource: resource)
  end
end
