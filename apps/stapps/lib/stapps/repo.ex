defmodule Stapps.Repo do
  use Ecto.Repo,
    otp_app: :stapps,
    adapter: Ecto.Adapters.Postgres
end
