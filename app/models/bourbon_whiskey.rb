class BourbonWhiskey < ActiveRecord::Base
  belongs_to :distillery
  has_many :bourbon_flavors
  has_many :flavors, through: :bourbon_flavors

  def self.random
    limit(1).order("RANDOM()")
  end
end
