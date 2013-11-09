class Like < ActiveRecord::Base
  belongs_to :user
  belongs_to :bourbon_attribute

  validates :user, presence: true
  validates :bourbon_attribute, presence: true
end
