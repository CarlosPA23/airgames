class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  include Pundit::Authorization

  after_action :verify_authorized, except: :index, unless: :skip_pundit?
  after_action :verify_policy_scoped, only: :index, unless: :skip_pundit?

  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :address, :photo])

    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :address, :photo])
  end

  # this action is used to have the booking of each users to have the view in Dashboard.
  def userdashboard
    @bookings = current_user.bookings.order(created_at: :desc)
  end

  private

  def skip_pundit?
    devise_controller? || params[:controller] =~ /(^(rails_)?admin)|(^pages$)/
  end
end
