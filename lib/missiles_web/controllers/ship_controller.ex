defmodule MissilesWeb.ShipController do
  use MissilesWeb, :controller

  alias Missiles.Fleet

  def index(conn, _params) do
    ships = Fleet.list_ships()

    render(conn, :index, ships: ships)
  end
end
