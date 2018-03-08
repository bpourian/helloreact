# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :helloreact,
  ecto_repos: [Helloreact.Repo]

# Configures the endpoint
config :helloreact, Helloreact.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "DoZ0gyz9Y1s6cDU34I2KwlLzjr0QAm7gxO6SMzRA+jvOVU+yorgzp0KgEnt6//NV",
  render_errors: [view: Helloreact.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Helloreact.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
