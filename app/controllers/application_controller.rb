class ApplicationController < ActionController::Base
  before_action :view_parts, only: [:index, :show]
  before_action :move_to_index, except: [:index, :new]
  before_action :configure_permitted_parameters, if: :devise_controller?

  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname])
  end

  def view_parts
    @title = "My Web list"
  end

  def move_to_index
    unless user_signed_in?
      redirect_to root_path
    end
  end

end
