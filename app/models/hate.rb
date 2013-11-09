class Hate < ActiveRecord::Base
  belongs_to :user
  belongs_to :bourbon_attribute

  validates :bourbon_attribute, presence: true
  validates :user, presence: true
end
