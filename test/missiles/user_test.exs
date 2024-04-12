defmodule Missiles.UserTest do
  use Missiles.DataCase

  alias Missiles.User

  describe "games" do
    alias Missiles.User.Game

    import Missiles.UserFixtures

    @invalid_attrs %{}

    test "list_games/0 returns all games" do
      game = game_fixture()
      assert User.list_games() == [game]
    end

    test "get_game!/1 returns the game with given id" do
      game = game_fixture()
      assert User.get_game!(game.id) == game
    end

    test "create_game/1 with valid data creates a game" do
      valid_attrs = %{}

      assert {:ok, %Game{} = game} = User.create_game(valid_attrs)
    end

    test "create_game/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = User.create_game(@invalid_attrs)
    end

    test "update_game/2 with valid data updates the game" do
      game = game_fixture()
      update_attrs = %{}

      assert {:ok, %Game{} = game} = User.update_game(game, update_attrs)
    end

    test "update_game/2 with invalid data returns error changeset" do
      game = game_fixture()
      assert {:error, %Ecto.Changeset{}} = User.update_game(game, @invalid_attrs)
      assert game == User.get_game!(game.id)
    end

    test "delete_game/1 deletes the game" do
      game = game_fixture()
      assert {:ok, %Game{}} = User.delete_game(game)
      assert_raise Ecto.NoResultsError, fn -> User.get_game!(game.id) end
    end

    test "change_game/1 returns a game changeset" do
      game = game_fixture()
      assert %Ecto.Changeset{} = User.change_game(game)
    end
  end
end
