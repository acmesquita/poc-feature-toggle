class FeatureResourcesController < ApplicationController
  def destroy
    @result = ::DisconectResourceToFeature.perfom(params)

    redirect_to feature_path(params[:feature_id])
  end
end