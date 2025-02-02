defmodule Missiles.Ships do
  @moduledoc """
  The Ships context. Contexts expose and group related functionality. In
  Phoenix they might:
  - encapsulate data access and validation
  - talk to a database or an API
  - be boundaries to decouple and isolate parts of an application

  https://hexdocs.pm/phoenix/1.7.10/contexts.html

  In this case all the CRUD actions of ships are here.

  From the contexts guide:
  Naming things is hard. If you're stuck when trying to come up with a context
  name when the grouped functionality in your system isn't yet clear, you can
  simply use the plural form of the resource you're creating. For example, a
  Products context for managing products. As you grow your application and the
  parts of your system become clear, you can simply rename the context to a more
  refined one.
  """

  alias Missiles.Repo
  alias Missiles.Ships.Ship

  @doc """
  Returns the list of ships.

  ## Examples

      iex> list_ships()
      [%Ship{}, ...]

  """
  def list_ships() do
    Repo.all(Ship)
  end

  @doc """
  Creates a ship.

  ## Examples

      iex> create_ship(%{field: value})
      {:ok, ship}

      iex> create_ship(%{field: bad_value})
      {:error, %Ecto.Changeset{}}
  """
  def create_ship(attrs \\ %{}) do
    %Ship{}
    |> Ship.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Gets a single ship.

  Raises `Ecto.NoResultsError` if the Ship does not exist.

  ## Examples

      iex> get_ship!(123)
      %Ship{}

      iex> get_ship!(456)
      ** (%Ecto.NoResultsError)
  """
  def get_ship!(id), do: Repo.get!(Ship, id)

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking ship changes.

  ## Examples

      iex> change_ship(ship)
      %Ecto.Changeset{data: %Ship{}}

  """
  def change_ship(%Ship{} = ship, attrs \\ %{}) do
    Ship.changeset(ship, attrs)
  end

  @doc """
  Updates a ship.

  ## Examples

      iex> update_ship(ship, @{field: value})
      {:ok, ship}

      iex> update_ship(ship, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_ship(%Ship{} = ship, attrs) do
    ship
    |> Ship.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a ship.

  ## Examples

      iex> delete_ship(ship)
      {:ok, %Ship{}}

      iex> delete_ship(ship)
      {:error, %Ecto.Changeset{}}

  """
  def delete_ship(%Ship{} = ship) do
    Repo.delete(ship)
  end
end
