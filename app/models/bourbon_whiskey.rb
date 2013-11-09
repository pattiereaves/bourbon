class BourbonWhiskey < ActiveRecord::Base
  belongs_to :distillery
  
  has_many :bourbon_profiles
  has_many :bourbon_attributes, through: :bourbon_profiles

  validates.presence_of :distillery

  def self.random
    # TODO: Set up random properly, avoid active record relation bug
    # return limit(1).order("RANDOM()")
    
    first
  end
end
