use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :email_swoosh, EmailSwoosh.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :email_swoosh, EmailSwoosh.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "email_swoosh_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
