class Like < ActiveRecord::Base
  belongs_to :user
  belongs_to :bourbon_attribute

  validates.presence_of :bourbon_attribute, :user

  def self.vote(bourbon_id)
    bourbon = BourbonWhiskey.find(bourbon_id)

    bourbon.bourbon_attributes.each do |a|
      like = where(user: @user, bourbon_attribute: a)

      create(user: @user, bourbon_attribute: a) unless like.count > 0
    end
  end
end
