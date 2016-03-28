module ApplicationHelper
  def icon(icon)
    content = content_tag :i, icon, class: 'material-icons'
    content.html_safe
  end
end
