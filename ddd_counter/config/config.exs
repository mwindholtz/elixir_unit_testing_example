# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :ddd_counter,
  ecto_repos: [DddCounter.Repo]

# Configures the endpoint
config :ddd_counter, DddCounterWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "0oVQojVESTD/wjQ8VLP4cRkfOF+IPpAEkgtz6zCi3553yiV6DbF7yO86K8AUEuur",
  render_errors: [view: DddCounterWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: DddCounter.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [
    signing_salt: "7pNP9inHaIUD1Xdr6NMgpPBZkVIfA4jN"
  ]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason
config :phoenix, template_engines: [leex: Phoenix.LiveView.Engine]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
