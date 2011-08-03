class User < ActiveRecord::Base
  has_many :messages

  attr_accessible

  before_create :set_token

  def self.from_omniauth!(omniauth)
    find_or_initialize_by_twitter_uid(omniauth["uid"]).tap do |user|
      user.twitter_access_token = omniauth["credentials"]["token"]
      user.name = omniauth["user_info"]["nickname"]
      user.avatar_url = omniauth["extra"]["user_hash"]["profile_image_url"]
      user.save!
    end
  end

  private
    def set_token
      self.token = ActiveSupport::SecureRandom.urlsafe_base64
    end
end
