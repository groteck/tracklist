module ApplicationHelper
  def tags_links(object_with_tags)
    object_with_tags.tags.map {|tag| (link_to tag.name,tag)}.join(", ").html_safe
  end
end
