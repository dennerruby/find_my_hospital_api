class Api::V1::HospitalsController < ApplicationController
    before_action :set_hospital, only: [:show]
    
    def index
       @hospitals = Hospital.within(params[:longitude].to_f, params[:latitude].to_f) 
       .sort_by { |hospital| hospital.ratings_average}
       .reverse
    end

    def show
    end

    private

    def set_hospital
        @hospital = Hospital.find_by!(google_place_id: params[:id])
    end
end
