module UsersHelper
  def get_shoe_priority
    case @user.sport
    when "Basketball"
      puts @user.styles
    when "Baseball"
    when "Football"
    when "Running"
    when "Swimming"
    when "Soccer"
    end
  end

  # changes after up or down-vote, voteType is 1 or -1 (up or down)
  def update_shoe_styles(shoe, voteType)
    shoes = Shoe.where(product_type: shoe.product_type)
    avg = shoes.pluck(:popularty).inject(:+) / shoes.count

    # user.styles['shoe.product_type']
    return (voteType) * (shoe.popularty / avg)
  end
end
