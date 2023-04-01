class FeaturesController < ApplicationController

  def index
    @result = ::ListAllFeatures.perfom
  end

  def show
    @feature = ::FindFeature.perfom(params[:id])
  end

  def create
    @feature = CreateFeature.perfom(params)

    redirect_to features_path if @feature.valid?
  end
end
