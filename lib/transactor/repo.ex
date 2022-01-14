defmodule Transactor.Repo do
  use Ecto.Repo,
    otp_app: :transactor,
    adapter: Ecto.Adapters.Postgres
end
