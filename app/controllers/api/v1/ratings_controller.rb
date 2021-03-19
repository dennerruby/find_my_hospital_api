class Api::V1::RatingsController < ApplicationController
 
    def create 
        ActiveRecord::Base.transaction do
            create_hospital
            create_rating

            render json: @rating
        end
    end

    private

    def create_rating
        @rating = Rating.new(ratings_params)

        @rating.hospital_id = @hospital.id
        @rating.save!
    end 

    def create_hospital
        @hospital = Hospital.find_or_create_by!(
            lonlat: "POINT(#{params[:hospital][:longitude].to_f} #{params[:hospital][:latitude].to_f})",
            name: params[:hospital][:name],
            address: params[:hospital][:address],
            google_place_id: params[:hospital][:google_place_id],
        )
    end

    def ratings_params
        params.require(:rating).permit(:value, :opinion, :user_name)
    end
end
