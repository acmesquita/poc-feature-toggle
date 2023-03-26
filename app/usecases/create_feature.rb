class CreateFeature
  def self.perfom(params)
    raise InvalidParamsError if params[:flag].nil?
      
    FeatureRepository.create(params[:flag])
  end
end