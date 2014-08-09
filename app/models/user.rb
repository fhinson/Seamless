class User < ActiveRecord::Base
  acts_as_taggable
  acts_as_taggable_on :music, :sports #

end
