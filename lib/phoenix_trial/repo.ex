defmodule PhoenixTrial.Repo do
  use Ecto.Repo,
    otp_app: :phoenix_trial,
    adapter: Ecto.Adapters.Postgres
end
