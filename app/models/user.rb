class User < ActiveRecord::Base

  attr_accessor :styles

  acts_as_taggable

end
