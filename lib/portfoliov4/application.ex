defmodule Portfoliov4.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      Portfoliov4Web.Telemetry,
      Portfoliov4.Repo,
      {DNSCluster, query: Application.get_env(:portfoliov4, :dns_cluster_query) || :ignore},
      {Phoenix.PubSub, name: Portfoliov4.PubSub},
      # Start the Finch HTTP client for sending emails
      {Finch, name: Portfoliov4.Finch},
      # Start a worker by calling: Portfoliov4.Worker.start_link(arg)
      # {Portfoliov4.Worker, arg},
      # Start to serve requests, typically the last entry
      Portfoliov4Web.Endpoint
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Portfoliov4.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    Portfoliov4Web.Endpoint.config_change(changed, removed)
    :ok
  end
end
