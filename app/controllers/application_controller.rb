class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_contact
    @current_contact ||= Contact.find_by(email: 'test1@influitive.com')
  end
end
