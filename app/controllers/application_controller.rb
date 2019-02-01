class ApplicationController < ActionController::Base
  before_action :authenticate_user!


  protect_from_forgery

  protected
    def after_sign_in_path_for(resource)
      puts form_authenticity_token
      "http://192.168.250.95:8000/api/v1/show/1?jwt=#{resource.token}"
    end
end
