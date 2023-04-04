class FindFeatureResource
  def self.perform(params)
    raise InvalidParamsError if params[:flag].blank? || params[:resource_id].blank?

    FeatureResourceRepository.find_by(params[:flag], params[:resource_id]) || OpenStruct.new({ flag: params[:flag], value: false})
  end
end