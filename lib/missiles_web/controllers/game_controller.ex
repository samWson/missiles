defmodule MissilesWeb.GameController do
  use MissilesWeb, :controller

  alias Missiles.Games
  alias Missiles.Games.Game

  def index(conn, _params) do
    games = Games.list_games()

    render(conn, :index, games: games)
  end

  def new(conn, _params) do
    form = Games.change_game(%Game{})
    |> to_form()

    render(conn, :new, form: form)
  end

  def create(conn, %{"game" => game}) do
    case Games.create_game(game) do
      {:ok, game} ->
        conn
        |> put_flash(:info, "Game created successfully.")
        |> redirect(to: ~p"/games/#{game}")

      {:error, %Ecto.Changeset{} = changeset} ->
        render(conn, :new, changeset: changeset)
    end
  end

  def show(conn, %{"id" => id}) do
    game = Games.get_game!(id)
    render(conn, :show, game: game)
  end

  def edit(conn, %{"id" => id}) do
    game = Games.get_game!(id)

    form = Games.change_game(game)
    |> to_form()

    render(conn, :edit, game: game, form: form)
  end

  def update(conn, %{"id" => id, "game" => game_params}) do
    game = Games.get_game!(id)

    case Games.update_game(game, game_params) do
      {:ok, game} ->
        conn
        |> put_flash(:info, "Game updated successfully.")
        |> redirect(to: ~p"/games/#{game}")

      {:error, %Ecto.Changeset{} = changeset} ->
        render(conn, :edit, game: game, changeset: changeset)
    end
  end

  def delete(conn, %{"id" => id}) do
    game = Games.get_game!(id)
    {:ok, _game} = Games.delete_game(game)

    conn
    |> put_flash(:info, "Game deleted successfully.")
    |> redirect(to: ~p"/games")
  end
end
