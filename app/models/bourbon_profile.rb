class BourbonProfile < ActiveRecord::Base
  belongs_to :bourbon_whiskey
  belongs_to :bourbon_attribute

  validates.presence_of :bourbon_whiskey, :bourbon_attribute
end
