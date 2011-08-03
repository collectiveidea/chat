Factory.define :user do |user|
  user.name "laserlemon"
  user.twitter_uid{ rand(1_000_000_000) }
  characters = [("a".."z"), ("A".."Z"), ("0".."9")].map(&:to_a).sum
  user.twitter_access_token{|u| "#{u.twitter_uid}-#{Array.new(41){ characters.sample }.join}" }
  user.avatar_url "http://a1.twimg.com/sticky/default_profile_images/default_profile_6_normal.png"
end
