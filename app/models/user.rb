class User < ActiveRecord::Base
  has_many :likes
  has_many :hates

  def hate(bourbon_id)
    
  end

  def like(bourbon_id)
    
  end
end