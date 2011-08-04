# encoding: utf-8

module ApplicationHelper
  def avatar(user)
    image_tag user.avatar_url, :class => "avatar", :alt => user.name, :title => user.name
  end

  def clean_body(body)
    simple_format auto_link(once_escaped(body)){|l| short_link(l) }
  end

  def once_escaped(text)
    begin
      old_text = text
      text = CGI.unescape_html(old_text)
    end until text == old_text
    h(text)
  end

  def short_link(link)
    truncate link.sub(/^https?:\/\//i, "").sub(/\/$/, ""), :omission => "…"
  end
end
