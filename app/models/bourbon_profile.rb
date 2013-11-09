class BourbonProfile < ActiveRecord::Base
  belongs_to :bourbon_whiskey
  belongs_to :bourbon_attribute
end
