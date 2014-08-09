class BaseController < ApplicationController
  def home
    @user = User.new
  end
end
