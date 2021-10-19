class ApplicationController < ActionController::API
    SECRET_KEY = Rails.application.secrets.secret_key_base
    #needed for encoding and decoding 
end
