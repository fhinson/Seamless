class BaseController < ApplicationController
  def home
    @user = User.new
    @shoe = Shoe.all.shuffle[0]
  end
end
