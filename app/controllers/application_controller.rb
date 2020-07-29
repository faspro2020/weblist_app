class ApplicationController < ActionController::Base
  before_action :view_parts, only: [:index, :show]


  def view_parts
    @user = "ユーザー名 (サインイン・マイページ)"
    @title = "My Web list"
  end
end
