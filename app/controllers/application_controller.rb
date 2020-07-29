class ApplicationController < ActionController::Base
  before_action :view_parts, only: [:index, :show]
  # before_action :move_to_index, except: [:index, :show, :edit]

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
