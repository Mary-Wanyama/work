class ParcelsController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response 
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response


    def index 
        render json: Parcel.all
    end 
    def show 
        parcel = parcel_params 
        render json: parcel, status: :ok
    end 
    def create 
        parcel = Parcel.create!(parcels_params) 
        render json: parcel, status: :created
    end 
    def update 
        parcel = parcel_params 

        parcels = parcel.update!(parcels_params) 

        render json: parcel
    end

    private 
    def parcel_params 
        Parcel.find(params[:id])
    end
    def parcels_params
        params.permit(:name, :type, :weight, :pickup_location, :delivery_location, :sender, :receiver, )
    end
    def render_unprocessable_entity_response(invalid)
        render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
      end

      def render_not_found_response
        render json: { error: "Parcel not found" }, status: :not_found
     end
end
