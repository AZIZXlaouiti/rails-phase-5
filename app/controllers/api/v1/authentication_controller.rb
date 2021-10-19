class Api::V1::AuthenticationController < ApplicationController
  
   def login 
      @user = User.find_by(username: params[:username])
      if @user&.authenticate(params[:username])
        @payload = {user_id: @user.id}
        @token = JWT.encode(@payload, SECRET_KEY) #payload, app_secret , algo
        #token =  # jwt string:
        render json: {
            user: UserSerializer.new(@user),
            token: @token,
            authenticated: true
        }, status: :accepted 
        else 
            render json: { errors: 'Invalid username or password' }, status: :unauthorized  
    end
      
   end

end
