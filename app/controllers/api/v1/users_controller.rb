class Api::V1::UsersController < ApplicationController
    def create
      #signup
      @user = User.new(user_params)
      if @user.save
          @payload = {user_id: @user.id}
          @token = JWT.encode(@payload, SECRET_KEY) #payload, app_secret , algo
          #token =  # jwt string:
          render json: {
              user: UserSerializer.new(@user),
              token: @token,
              authenticated: true
          }, status: :created 
      else 
          render json: { message:  @user.errors.full_messages } , status: :unprocessable_entity
      end
    end


     def index 
        
     end
      private
      def user_params
        params.permit(:username, :password)
      end

end