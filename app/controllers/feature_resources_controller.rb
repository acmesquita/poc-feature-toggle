class FeatureResourcesController < ApplicationController
  before_action :authenticate_user!

  def destroy
    begin
      @result = ::DisconectResourceToFeature.perfom(params)

      redirect_to feature_path(params[:feature_id])
    rescue => exception
      redirect_to feature_path(params[:feature_id]), alert: exception.message
    end
  end
end