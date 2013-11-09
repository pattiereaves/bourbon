class BourbonAttribute < ActiveRecord::Base
  belongs_to :bourbon_whiskey
  belongs_to :attribute
end
