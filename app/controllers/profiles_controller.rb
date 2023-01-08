class ProfilesController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response 
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response


    def index 
        render json: Profile.all
    end 
    def show 
        profile = parcel_params 
        render json: profile, status: :ok
    end 
    def create 
        profile = Profile.create!(profiles_params) 
        render json: profile, status: :created
    end 
    def update 
        profile = profile_params 

        profiles = profile.update!(parcels_params) 

        render json: profile
    end

    private 
    def profile_params 
        Profile.find(params[:id])
    end
    def profiles_params
        params.permit(:user_id, :parcel_id )
    end
    def render_unprocessable_entity_response(invalid)
        render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
      end

      def render_not_found_response
        render json: { error: "Profile not found" }, status: :not_found
     end
end
