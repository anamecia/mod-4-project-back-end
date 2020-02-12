class ReadingsController < ApplicationController
 

    def create 
        reading = Reading.create(reading_params)
            
        render json: reading
    end

    def update
        reading = Reading.find(params[:id])
        reading.update(status: params[:reading][:status])

        render json: reading

    end 

    private

    def reading_params
        params.require(:reading).permit(:book_id, :user_id, :status)
    end 

end 

