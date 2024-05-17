defmodule Missiles.Repo.Migrations.AddTurnsToGamesTable do
  use Ecto.Migration

  def change do
    alter table(:games) do
      add :turn, :integer, default: 0
    end
  end
end
