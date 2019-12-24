use Mix.Config

# Configure your database
config :stapps, Stapps.Repo,
  username: "postgres",
  password: "postgres",
  database: "stapps_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :stapps_web, StappsWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn
