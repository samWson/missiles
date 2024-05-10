defmodule Missiles.Games.Game do
  use Ecto.Schema
  import Ecto.Changeset

  schema "games" do
    field :player, :string

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(game, attrs) do
    game
    |> cast(attrs, [:player])
    |> validate_required([:player])
  end
end
