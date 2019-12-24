# This file is responsible for configuring your umbrella
# and **all applications** and their dependencies with the
# help of Mix.Config.
#
# Note that all applications in your umbrella share the
# same configuration and dependencies, which is why they
# all use the same configuration file. If you want different
# configurations or dependencies per app, it is best to
# move said applications out of the umbrella.
use Mix.Config

# Configure Mix tasks and generators
config :stapps,
  ecto_repos: [Stapps.Repo]

config :stapps_web,
  ecto_repos: [Stapps.Repo],
  generators: [context_app: :stapps]

# Configures the endpoint
config :stapps_web, StappsWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "h4wcSBoj3FKzOGheuhvS4YP7J6vGIp2e1wpVIa5ZsLePy+b0sURsKuGJ9IoYCMEn",
  render_errors: [view: StappsWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: StappsWeb.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Live Reload



# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
