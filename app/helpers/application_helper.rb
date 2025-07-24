module ApplicationHelper
  def logo(size = "h2")
    link_to(root_path, class: "navbar-brand") do
      content_tag(size) do
        content_tag(:i, "", class: "bi bi-safe-fill me-2") + " SafePass"
      end
    end
  end
end
