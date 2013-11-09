class Hate < ActiveRecord::Base
  belongs_to :user
  belongs_to :bourbon_attribute

  validates.presence_of :bourbon_attribute, :user
end
