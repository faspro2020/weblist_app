class ApplicationController < ActionController::Base
  before_action :view_parts, only: [:index, :show]
  # before_action :move_to_index, except: [:index, :show, :edit]
  before_action :configure_permitted_parameters, if: :devise_controller?

  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname])
  end

  def view_parts
    @user = "ユーザー名 (サインイン・マイページ)"
    @title = "My Web list"
  end

  # def move_to_index
  #   unless user_signed_in?
  #     redirect_to action: :index
  #   end
  # end

end
