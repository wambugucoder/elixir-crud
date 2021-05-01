# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Hello.Repo.insert!(%Hello.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.
alias Hello.Repo

alias Hello.Management.Document

Repo.insert! %Document{
  name: "Doc1",
  content: "Content1",
  view_count:  1,
  published: false,
  project_id: 1
}
