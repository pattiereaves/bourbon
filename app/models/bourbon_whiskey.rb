class BourbonWhiskey < ActiveRecord::Base
  belongs_to :distillery
  
  has_many :bourbon_profiles
  has_many :bourbon_attributes, through: :bourbon_profiles

  validates :distillery, presence: true

  def self.random(user)
    # TODO: Set up random properly, avoid active record relation bug
    
    # I know this is bad, but this is Jazz
    if user && user.likes.nil?
      # find bourbon where attributes are in the users Bourbon profle
      # 
      everything = user.likes.first.bourbon_attributes.bourbon_whiskeys
      # everything = joins(:bourbon_attributes, :bourbon_profiles).where(user_id: user.id)
    else
      everything = all
    end

    everything[rand(everything.count)]
  end
end
