class UsersController < ApplicationController
  include UsersHelper

  def create
    @user = User.new(user_params)
    @user.age = set_age_group(params[:user][:age])

    respond_to do |format|
      if @user.save
        format.html { redirect_to root_path, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render root_path }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def get_shoe
    @shoe = Shoe.find(params[:shoe_id])
    @user = User.find(params[:id])

    if @shoe.product_type == "Work-Outdoor"
      @user.Work_Outdoor += update_shoe_styles(@shoe, params[:vote].to_f)

    elsif @shoe.product_type == "Military-Law-Enforcement"
      @user.Military_Law_Enforcement += update_shoe_styles(@shoe, params[:vote].to_f)

    elsif @shoe.product_type == "Boots"
      @user.Boots += update_shoe_styles(@shoe, params[:vote].to_f)

    elsif @shoe.product_type == "Dress"
      @user.Dress += update_shoe_styles(@shoe, params[:vote].to_f)

    elsif @shoe.product_type == "Western"
      @user.Western += update_shoe_styles(@shoe, params[:vote].to_f)

    elsif @shoe.product_type == "Casual"
      @user.Casual += update_shoe_styles(@shoe, params[:vote].to_f)

    elsif @shoe.product_type == "Sandals"
      @user.Sandals += update_shoe_styles(@shoe, params[:vote].to_f)

    elsif @shoe.product_type == "Athletic"
      @user.Athletic += update_shoe_styles(@shoe, params[:vote].to_f)

    elsif @shoe.product_type == "Classics"
      @user.Classics += update_shoe_styles(@shoe, params[:vote].to_f)

    elsif @shoe.product_type == "Bowling"
      @user.Bowling += update_shoe_styles(@shoe, params[:vote].to_f)

    elsif @shoe.product_type == "Accessories"
      @user.Accessories += update_shoe_styles(@shoe, params[:vote].to_f)

    elsif @shoe.product_type == "Nursing"
      @user.Nursing += update_shoe_styles(@shoe, params[:vote].to_f)

    elsif @shoe.product_type == "Slippers"
      @user.Slippers += update_shoe_styles(@shoe, params[:vote].to_f)

    elsif @shoe.product_type == "Service-Hospitality"
      @user.Service_Hospitality += update_shoe_styles(@shoe, params[:vote].to_f)

    elsif @shoe.product_type == "Handbads"
      @user.Handbads += update_shoe_styles(@shoe, params[:vote].to_f)

    else
      puts "ouch"
    end

    @user.save


    @shoe = Shoe.all.where(gender: @user.gender).shuffle[0]

    render json: [@shoe.name,  @shoe.seller, @shoe.url, @shoe.price, @shoe.description]
  end

  def set_name
    @user = User.find(params[:id])
    @user.name = params[:name]
    @user.save
    render :nothing => true
  end

  def set_gender
    @user = User.find(params[:id])
    @user.gender = params[:gender]
    @user.save
    render :nothing => true
  end

  def set_sport
    @user = User.find(params[:id])
    @user.sport = params[:sport]
    @user.save
    render :nothing => true
  end

  def set_music
    @user = User.find(params[:id])
    @user.music = params[:music]
    @user.save
    render :nothing => true
  end

  private
  def user_params
    params.require(:user).permit(:name, :gender)
  end

  def set_age_group(age)
    if age <= "18"
      return "Adolescent"
    elsif age <= "30"
      return "Young Adult"
    else
      return "Adult"
    end

    return "Adult"
  end

end
