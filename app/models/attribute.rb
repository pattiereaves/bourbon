class Attribute < ActiveRecord::Base
  belongs_to :attribute_type

  has_many :bourbon_attributes
  has_many :bourbon_whiskeys, through: :bourbon_attributes
end