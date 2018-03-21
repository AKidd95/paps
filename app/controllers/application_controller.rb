class ApplicationController < ActionController::Base
  def access_denied(exception)
      redirect_to root_path, alert: "You do not have permission to do that"
    end
end
