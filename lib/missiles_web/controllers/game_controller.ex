defmodule MissilesWeb.GameController do
  use MissilesWeb, :controller

  def index(conn, _params) do
    render(conn, :index)
  end
end