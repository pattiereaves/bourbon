class Attribute < ActiveRecord::Base
  belongs_to :attribute_type

  has_many :bourbon_whikseys
  has_many :bourbon_whikseys, through: :bourbon_attributes
end