class BourbonWhiskey < ActiveRecord::Base
  belongs_to :distillery
  
  has_many :bourbon_profiles
  has_many :bourbon_attributes, through: :bourbon_profiles

  validates :distillery, presence: true

  def self.random
    # TODO: Set up random properly, avoid active record relation bug
    # return limit(1).order("RANDOM()")
    
    first
  end
end
