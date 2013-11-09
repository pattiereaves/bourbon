class Like < ActiveRecord::Base
  belongs_to :user
  belongs_to :bourbon_attribute

  validates :user, presence: true
  validates :bourbon_attribute, presence: true

  def self.vote(bourbon_id)
    # Find the bourbon
    bourbon = BourbonWhiskey.find(bourbon_id)

    # Loop through attributes
    bourbon.bourbon_attributes.each do |a|
      # Does like exist?
      like = where(user: @user, bourbon_attribute: a)

      # If so, show it some love
      if like.count > 0
        like.update_attribute is_loved: true 
      else
        # Else create a like
        like = create(user: @user, bourbon_attribute: a)
      end
    end
  end
end
