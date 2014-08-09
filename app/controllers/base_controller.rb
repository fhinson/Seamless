class BaseController < ApplicationController
  def home
    @user = User.new(gender: "Men's")


    @user.styles = {"Work-Outdoor"=>0.5,"Military-Law-Enforcement"=>0.5,
      "Boots"=>0.5, "Dress"=>0.5, "Western"=>0.5, "Casual"=>0.4, "Sandals"=>0.4,
      "Athletic"=>0.5, "Classics"=>0.6, "Bowling"=>0.5, "Accessories"=>0.5,
      "Nursing"=>0.5, "Slippers"=>0.5, "Service-Hospitality"=>0.6, "Handbags"=>0.6}

    @user.save

    @shoe = Shoe.all.shuffle[0]
  end
end
