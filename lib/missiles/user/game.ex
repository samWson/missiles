defmodule Missiles.User.Game do
  use Ecto.Schema
  import Ecto.Changeset

  schema "games" do


    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(game, attrs) do
    game
    |> cast(attrs, [])
    |> validate_required([])
  end
end
