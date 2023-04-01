class DeleteFeature
  def self.perfom(params)
    FeatureRepository.destroy(params[:id])
  end
end