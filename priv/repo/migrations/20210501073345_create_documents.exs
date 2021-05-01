defmodule Hello.Repo.Migrations.CreateDocuments do
  use Ecto.Migration

  def change do
    create table(:documents) do
      add :name, :string
      add :content, :string
      add :view_count, :integer
      add :published, :boolean, default: false
      add :project_id, references(:projects)

      timestamps()
    end

  end
end
