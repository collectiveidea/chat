# encoding: utf-8

module ApplicationHelper
  def avatar(user)
    image_tag user.avatar_url, :class => "avatar", :alt => user.name, :title => user.name
  end

  def short_link(link)
    truncate link.sub(/^https?:\/\//i, ""), :omission => "…"
  end
end
