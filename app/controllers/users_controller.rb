class UsersController <  ApplicationController

    def signin
        user = User.find_by(username: params[:username])

        if user and user.authenticate(params[:password])
            # we know user managed to sign in
            render json: { username:  user.username, token: issue_token({ id: user.id })}
            
          else
            # we know the sign in failed
            render json: { error: 'Username/password invalid.' }, status: 403
          end
    end 

    def validate
      user = get_current_user
      if user
        render json: { username:  user.username, token: issue_token({ id: user.id }) }
      else
        render json: { error: 'You are not authorized.' }, status: 401
      end
    end

    def signup
      user = User.create(user_params)
      render json: { username:  user.username, token: issue_token({ id: user.id })}
    end


    def user_readings
      user = get_current_user
      user_readings = user.readings
     
      if user
          render json: user_readings, include:[:book]
      else
          render json: { error: 'You are not authorized.' }, status: 401
      end
    end


    # def userreadbooks
    #   user = get_current_user
    #   user_read_readings = user.readings.select{|reading| reading.status == 'Read'}
    #   user_read_books = user_read_readings.map{|reading| {book: reading.book, readingId: reading.id}}
     
    #   if user
    #       render json: user_read_books
    #   else
    #       render json: { error: 'You are not authorized.' }, status: 401
    #   end
    # end

    # def userwanttoreadbooks
    #   user = get_current_user
    #   user_want_to_read_readings = user.readings.select{|reading| reading.status == 'Want to read'}
    #   user_want_to_read_books = user_want_to_read_readings.map{|reading| {book: reading.book, readingId: reading.id}}
     
    #   if user
    #       render json: user_want_to_read_books
    #   else
    #       render json: { error: 'You are not authorized.' }, status: 401
    #   end
    # end

    # def usercurrentlyreadingbooks
      
    #   user = get_current_user
    #   user_currently_reading_readings = user.readings.select{|reading| reading.status == 'Currently Reading'}
    #   user_currently_reading_books = user_currently_reading_readings.map{|reading| {book: reading.book, readingId: reading.id}}
    
    #   if user
    #       render json: user_currently_reading_books
    #   else
    #       render json: { error: 'You are not authorized.' }, status: 401
    #   end
    # end




    private

    def user_params
      params.require(:user).permit(:username, :password, :password_confirmation)
    end

end 