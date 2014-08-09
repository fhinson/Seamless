class UsersController < ApplicationController
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

  private
  def user_params
    params.require(:user).permit(:name)
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
