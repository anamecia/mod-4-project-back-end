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

   def show
    reading = Reading.find_by(id: params[:id])

        if reading
            render json: reading, include: [:book]
        else 
            render json: { error: 'Invalid Book' }, status: 403
        end
    end

    def destroy 
        reading = Reading.find_by(id: params[:id])

        if reading
            reading.destroy
        else
            render json: { error: 'Invalid Book' }, status: 403
        end
    end 

    private

    def reading_params
        params.require(:reading).permit(:book_id, :user_id, :status)
    end 

end 

