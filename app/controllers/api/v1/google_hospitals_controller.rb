class Api::V1::GoogleHospitalsController < ApplicationController
    def index
        places = GetGoogleHospitalListService.new(params[:latitude], params[:longitude]).call
        render json: places
    end

    def show
        render json: GetGoogleHospitalDetailsService.new(params[:id]).call
    end
end
