class ConnectResourceToFeature
  def self.perfom(params)
    raise InvalidParamsError if params[:resource_ids].nil?
    
    resource_ids = params[:resource_ids].split(',')
 
    resource_ids.map do |resource_id|
      FeatureResourceRepository.find_or_create(params[:id], resource_id)
    end

    true
  end
end