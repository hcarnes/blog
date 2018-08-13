module ApplicationHelper
  def render_markdown(markdown_string)
    renderer = Redcarpet::Render::Safe.new(tables: true, hard_wrap: true)
    markdown = Redcarpet::Markdown.new(renderer, autolink: true)
    markdown.render(markdown_string).html_safe
  end
end
