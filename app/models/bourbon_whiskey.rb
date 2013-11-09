class BourbonWhiskey < ActiveRecord::Base
  belongs_to :distillery
  
  has_many :bourbon_attributes
  has_many :attributes, through: :bourbon_attributes

  def self.random
    # TODO: Set up random properly, avoid active record relation bug
    # return limit(1).order("RANDOM()")
    
    first
  end
end
