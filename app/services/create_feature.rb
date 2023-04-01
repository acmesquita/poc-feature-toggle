class CreateFeature
  def self.perfom(params)
    raise InvalidParamsError if params[:flag].nil? || params[:resource_ids].nil?
    
    resource_ids = params[:resource_ids].split(',')
    feature = FeatureRepository.create(params[:flag])
 
    resource_ids.map do |resource_id|
      FeatureResourceRepository.create(feature.id, resource_id)
    end

    feature
  end
end