module ApplicationHelper
  def full_title(page_title)
    base_title = 'Bindr'
    if page_title.empty?
      base_title
    else
      "#{page_title} | #{base_title}"
    end
  end

  def tag_link(tag_obj)
    content_tag(:span, class: 'label label-info') do
      link_to("#{tag_obj.name} (#{tag_obj.taggings_count})", binders_path(tag: tag_obj.name))
    end
  end
end
