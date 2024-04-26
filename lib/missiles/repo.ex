defmodule Missiles.Repo do
  @moduledoc """
  The applications definition of its repository. It maps to the underlying data
  store. In this case an SQLite3 database.

  Use of Repo is done through the functions defined in Ecto.Repo:
  https://hexdocs.pm/ecto/3.11.2/Ecto.Repo.html
  """

  use Ecto.Repo,
    otp_app: :missiles,
    adapter: Ecto.Adapters.SQLite3
end
