defmodule Missiles.Repo do
  use Ecto.Repo,
    otp_app: :missiles,
    adapter: Ecto.Adapters.SQLite3
end
