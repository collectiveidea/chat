module ApplicationHelper
  def avatar(user)
    image_tag user.avatar_url, :class => "avatar", :alt => user.name, :title => user.name
  end
end
