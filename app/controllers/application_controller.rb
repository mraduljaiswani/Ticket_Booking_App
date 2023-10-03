class ApplicationController < ActionController::Base

    protect_from_forgery with: :null_session

    
    def root
    
        render 'application/root'

    end
end
