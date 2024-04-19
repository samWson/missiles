defmodule Missiles.Fleet do
  alias Missiles.Repo
  alias Missiles.Fleet.Ship

  def list_ships() do
    Repo.all(Ship)
  end
end