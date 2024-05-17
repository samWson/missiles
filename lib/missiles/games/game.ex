defmodule Missiles.Games.Game do
  use Ecto.Schema
  import Ecto.Changeset

  schema "games" do
    field :player, :string
    field :turn, :integer, default: 0

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(game, attrs) do
    game
    |> cast(attrs, [:player, :turn])
    |> validate_required([:player, :turn])
    |> validate_number(:turn, greater_than_or_equal_to: 0)
  end
end
