class User < ActiveRecord::Base
  has_many :messages

  attr_accessible

  before_create :set_token

  private
    def set_token
      self.token = ActiveSupport::SecureRandom.urlsafe_base64
    end
end
