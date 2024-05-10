defmodule Missiles.Ships.Ship do
  @moduledoc """
  This the ship schema. It is an Ecto.Schema so it defines a mapping external
  data to a struct.

  The `schema/2` macro defines the mapping from the persistent data store.

  https://hexdocs.pm/ecto/3.11.2/Ecto.Schema.html
  """
  use Ecto.Schema
  import Ecto.Changeset

  schema "ships" do
    field :name, :string
    field :category, :string

    timestamps(type: :utc_datetime)
  end

  @doc """
  This creates a changeset for ship structs. First it casts, which is to apply
  the given attributes as a change against the ship. Then it validates that
  required fields are in the changeset.
  """
  def changeset(ship, attrs) do
    ship
    |> cast(attrs, [:name, :category])
    |> validate_required([:name, :category])
  end
end
