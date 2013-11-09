class BourbonWhiskey < ActiveRecord::Base
  belongs_to :distillery
  has_many :flavors, through: :bourbon_flavors
end
