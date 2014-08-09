class BaseController < ApplicationController
  def home
    @user = User.create(gender: "Men's")
    @shoe = Shoe.all.shuffle[0]
  end
end
