defmodule Missiles.Repo.Migrations.AddPlayerToGamesTable do
  use Ecto.Migration

  def change do
    alter table(:games) do
      add :player, :string
    end
  end
end
