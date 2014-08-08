class Shoe < ActiveRecord::Base
  acts_as_taggable
  acts_as_taggable_on :music, :sports #
end
