# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :backdoor,
  ecto_repos: [Backdoor.Repo]

# Configures the endpoint
config :backdoor, BackdoorWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "RIF4LYTl0fwado0PF223YqyeZIkYn32fRG1r0cyXRedqA6uzv7CPc8y5orJynu4X",
  render_errors: [view: BackdoorWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Backdoor.PubSub,
  live_view: [signing_salt: "lyrDalEp"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
