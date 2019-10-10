defmodule DddCounter.Repo do
  use Ecto.Repo,
    otp_app: :ddd_counter,
    adapter: Ecto.Adapters.Postgres
end
