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

alias Hello.Management.Project

Repo.insert! %Project{
  title: "ABC",
  description: "Trial app"
}

Repo.insert! %Project{
  title: "BCD",
  description: "Second Trial"
}
