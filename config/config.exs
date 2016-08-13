# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :email_swoosh,
  ecto_repos: [EmailSwoosh.Repo]

# Configures the endpoint
config :email_swoosh, EmailSwoosh.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "vmNEFg4rHJfxzmz+cWfGicPecszpefuOOIQETOFq4lxBpkarvTrg+jshPIu5xAD9",
  render_errors: [view: EmailSwoosh.ErrorView, accepts: ~w(html json)],
  pubsub: [name: EmailSwoosh.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
