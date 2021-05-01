defmodule HelloWeb.ProjectController do
  use HelloWeb, :controller

  alias Hello.Management
  alias Hello.Management.Project

  action_fallback HelloWeb.FallbackController

  def index(conn, _params) do
    projects = Management.list_projects()
    render(conn, "index.json", projects: projects)
  end

  def show(conn, %{"id" => id}) do
    project = Management.get_project!(id)
    render(conn, "show.json", project: project)
  end

  def delete(conn, %{"id" => id}) do
    project = Management.get_project!(id)

    with {:ok, %Project{}} <- Management.delete_project(project) do
      send_resp(conn, :no_content, "")
    end
  end
end
