defmodule Missiles.Repo.Migrations.CreateGames do
  use Ecto.Migration

  def change do
    create table(:games) do

      timestamps(type: :utc_datetime)
    end
  end
end
