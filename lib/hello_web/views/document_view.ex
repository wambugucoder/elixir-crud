defmodule HelloWeb.DocumentView do
  use HelloWeb, :view
  alias HelloWeb.DocumentView

  def render("index.json", %{documents: documents}) do
    %{data: render_many(documents, DocumentView, "document.json")}
  end

  def render("show.json", %{document: document}) do
    %{data: render_one(document, DocumentView, "document.json")}
  end

  def render("document.json", %{document: document}) do
    %{id: document.id,
      name: document.name,
      content: document.content,
      view_count: document.view_count}
    #  project_id: document.project}
  end
end
