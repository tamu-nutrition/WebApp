class ApplicationController < ActionController::Base
  before_action :authenticate_admin!
  
  helper_method :current_admin

  private

  def current_admin
    if session[:email]
      return session[:email]
    else
      return nil
    end
  end
end