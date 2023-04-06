class FeaturesController < ApplicationController
  before_action :authenticate_user!

  def index
    @result = ::ListAllFeatures.perfom
  end

  def new
    @feature = Feature.new
  end

  def show
    begin
      @feature = ::FindFeature.perfom(params[:id])
    rescue => exception
      redirect_to features_path, notice: exception.message
    end
  end

  def edit
    @feature = ::FindFeature.perfom(params[:id])
  end

  def update
    @result = ::ConnectResourceToFeature.perfom(params)

    redirect_to feature_path(params[:id]) if @result
  end

  def create
    @feature = CreateFeature.perfom(params)

    redirect_to features_path if @feature.valid?
  end

  def destroy
    @result = ::DeleteFeature.perfom(params)

    redirect_to features_path if @result
  end
end
