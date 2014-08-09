class UsersController < ApplicationController
  def create
  end

  def get_shoe
    @shoe = Shoe.all.shuffle[0]
    render json: [@shoe.name,  @shoe.seller, @shoe.url]
  end
end
