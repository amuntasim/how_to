class ApplicationController < ActionController::Base
  protect_from_forgery

  def authorize_to_manage_how_to
    #redirect_to :root
  end

  def permitted_to_manage_how_to?
    true
  end
end
