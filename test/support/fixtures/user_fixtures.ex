defmodule Missiles.UserFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Missiles.User` context.
  """

  @doc """
  Generate a game.
  """
  def game_fixture(attrs \\ %{}) do
    {:ok, game} =
      attrs
      |> Enum.into(%{

      })
      |> Missiles.User.create_game()

    game
  end
end
