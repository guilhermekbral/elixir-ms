defmodule ExampleServiceElixir do
  use Application

  def start(_type, _args) do
    children = [
      Plug.Adapters.Cowboy2.child_spec(
        scheme: :http,
        plug: ExampleServiceElixir.Router,
        options: [port: 4000]
      )
    ]
    opts = [strategy: :one_for_one, name: ExampleServiceElixir.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
