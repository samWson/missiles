defmodule MissilesWeb.ShipController do
  @moduledoc """
  A Phoenix controller responds to HTTP requests via an action that gathers data
  and performs necessary steps before invoking views to render a HTML or JSON
  template in response. It handles the request, response parts of HTTP
  applications.
  """

  use MissilesWeb, :controller

  alias Missiles.Fleet
  alias Missiles.Fleet.Ship

  def index(conn, _params) do
    ships = Fleet.list_ships()

    render(conn, :index, ships: ships)
  end

  def new(conn, _params) do
    form = Fleet.change_ship(%Ship{})
    |> to_form()

    render(conn, :new, form: form)
  end

  def create(conn, %{"ship" => ship}) do
    case Fleet.create_ship(ship) do
      {:ok, ship} ->
        conn
        |> put_flash(:info, "Ship created successfully.")
        |> redirect(to: ~p"/ships/#{ship}")

      {:error, %Ecto.Changeset{} = changeset} ->
        render(conn, :new, changeset: changeset)
    end
  end

  def show(conn, %{"id" => id}) do
    ship = Fleet.get_ship!(id)

    render(conn, :show, ship: ship)
  end

  def edit(conn, %{"id" => id}) do
    ship = Fleet.get_ship!(id)

    form = Fleet.change_ship(ship)
    |> to_form()

    render(conn, :edit, ship: ship, form: form)
  end

  def update(conn, %{"id" => id, "ship" => ship_params}) do
    ship = Fleet.get_ship!(id)

    case Fleet.update_ship(ship, ship_params) do
      {:ok, ship} ->
        conn
        |> put_flash(:info, "Ship updated successfully.")
        |> redirect(to: ~p"/ships/#{ship}")

      {:error, %Ecto.Changeset{} = changeset} ->
        render(conn, :new, changeset: changeset)
    end
  end

  def delete(conn, %{"id" => id}) do
    ship = Fleet.get_ship!(id)
    {:ok, _ship} = Fleet.delete_ship(ship)

    conn
    |> put_flash(:info, "Ship deleted successfully.")
    |> redirect(to: ~p"/ships")
  end
end
