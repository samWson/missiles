defmodule Missiles.Fleet.Ship do
  use Ecto.Schema

  schema "ships" do
    field :name, :string
    field :category, :string

    timestamps(type: :utc_datetime)
  end
end