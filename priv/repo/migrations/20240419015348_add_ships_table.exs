defmodule Missiles.Repo.Migrations.AddShipsTable do
  use Ecto.Migration

  def change do
    create table("ships") do
      add :name, :string
      add :category, :string

      timestamps(type: :utc_datetime)
    end
  end
end
