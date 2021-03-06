module ApplicationHelper

  # http://stackoverflow.com/a/9536660
  def nav_link(text, link)
      recognized = Rails.application.routes.recognize_path(link)
      if recognized[:controller] == params[:controller] # && recognized[:action] == params[:action]
          content_tag(:li, :class => "active") do
              link_to( text, link)
          end
      else
          content_tag(:li) do
              link_to( text, link)
          end
      end
  end

  def nl2br(s)
    s.gsub(/\n/, '<br>')
  end

end
