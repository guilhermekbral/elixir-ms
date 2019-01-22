defmodule ExampleServiceElixir.MixProject do
  use Mix.Project

  def project do
    [
      app: :example_service_elixir,
      version: "0.1.0",
      elixir: "~> 1.8",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger, :cowboy, :plug, :poison],
      mod: {ExampleServiceElixir, []}
    ]
  end

  defp deps do
    [
      {:plug_cowboy, "~> 1.0"},
      {:plug, "~> 1.6"},
      {:poison, "~> 3.1"}
    ]
  end
end
