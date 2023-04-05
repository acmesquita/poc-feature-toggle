class Api::FeatureResourcesController < ApplicationController
  def index
    begin
      @result = FindFeatureResource.perform(params)
      presenter = FeatureFlagPresenter.new(@result)

      render json: presenter, status: :ok
    rescue ActiveModel::ValidationError
      render json: { error: 'Invalid params: flag or resource_id, example: /api/feature_toggle?flag=new_page&resource_id=123' }, status: :bad_request
    end
  end
end
