class Api::FeatureResourcesController < ApplicationController
  def index
    begin
      @result = FindFeatureResource.perform(params)

      if (@result.present?)
        render json:  { flag: @result.flag, value: @result.value }, status: :ok
      else
        render json: { flag: params[:flag], value: false }, status: :ok
      end
    rescue InvalidParamsError
      render json: { error: 'Invalid params, you need send params: flag and resource_id, example: /api/feature_toggle?flag=new_page&resource_id=123' }, status: :bad_request
    end
  end
end
