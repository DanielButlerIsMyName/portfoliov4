defmodule Portfoliov4.Repo do
  use Ecto.Repo,
    otp_app: :portfoliov4,
    adapter: Ecto.Adapters.Postgres
end
