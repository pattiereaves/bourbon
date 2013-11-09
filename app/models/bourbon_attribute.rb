class BourbonAttribute < ActiveRecord::Base
  belongs_to :attribute_type

  has_many :bourbon_profiles
  has_many :bourbon_whiskeys, through: :bourbon_profiles
end