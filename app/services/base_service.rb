class BaseService
  include ActiveModel::Validations

  def initialize(params)
    validate!
  end
end
