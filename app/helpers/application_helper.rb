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
      link_to(fa_icon('tag') + " #{tag_obj.name} (#{tag_obj.taggings_count})", binders_path(tag: tag_obj.name))
    end
  end

  def complete_tag(complete)
    if complete
      content_tag(:small) do
        content_tag(:span, '完結済', class: 'label label-success')
      end
    else
      content_tag(:small) do
        content_tag(:span, '進行中', class: 'label label-warning')
      end
    end
  end
end
