class BourbonProfile < ActiveRecord::Base
  belongs_to :bourbon_whiskey
  belongs_to :bourbon_attribute

  validates :bourbon_whiskey, presence: true
  validates :bourbon_attribute, presence: true
end
