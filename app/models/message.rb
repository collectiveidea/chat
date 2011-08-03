class Message < ActiveRecord::Base
  belongs_to :user

  attr_accessible :body

  validates :body, :presence => true

  scope :new_to_old, order("messages.created_at DESC")
end
