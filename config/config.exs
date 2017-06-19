# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :phoenix_wechat,
  ecto_repos: [PhoenixWechat.Repo]

# Configures the endpoint
config :phoenix_wechat, PhoenixWechat.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "ZAqL/O5+XiatAas2G7JM52EmgqpbVzv0CEsuOwKsfa6Pi3ldp1L6GVXia3JYWqSF",
  render_errors: [view: PhoenixWechat.ErrorView, accepts: ~w(html json)],
  pubsub: [name: PhoenixWechat.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
