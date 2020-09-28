defmodule Backdoor.Repo do
  use Ecto.Repo,
    otp_app: :backdoor,
    adapter: Ecto.Adapters.Postgres
end
