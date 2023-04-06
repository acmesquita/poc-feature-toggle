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
      @feature = find_feature(params)
    rescue => exception
      redirect_to features_path, alert: exception.message
    end
  end

  def edit
    begin
      @feature = find_feature(params)
    rescue => exception
      redirect_to features_path, alert: exception.message
    end
  end

  def update
    @result = ::ConnectResourceToFeature.perfom(params)

    redirect_to feature_path(params[:id]) if @result
  end

  def create
    begin
      @feature = ::CreateFeature.perfom(params)

      redirect_to @feature, notice: 'Feature was successfully created.'
    rescue => exception
      redirect_to new_feature_path, alert: exception.message
    end
  end

  def destroy
    begin
      @result = ::DeleteFeature.perfom(params)

      redirect_to features_path, notice: 'Feature was successfully destroyed.'
    rescue => exception
      redirect_to features_path, alert: exception.message
    end
  end

  private

  def find_feature(params)
    ::FindFeature.perfom(params)
  end
end
