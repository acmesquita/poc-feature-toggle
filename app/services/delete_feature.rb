class DeleteFeature < BaseService
  validates_presence_of :id

  attr_reader :id

  def self.perfom(params)
    new(params).perfom
  end

  def initialize(params)
    @id = params[:id]
  end

  def perfom
    FeatureRepository.destroy(@id)
  end
end