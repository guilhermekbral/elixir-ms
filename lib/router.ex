defmodule ExampleServiceElixir.Router do
  use Plug.Router
  alias ExampleServiceElixir.API

  plug :match
  plug Plug.Parsers,
    parsers: [:json],
    pass: ["application/json"],
    json_decoder: Poison
  plug :dispatch

  get "/hello" do
    API.HelloEndpoint.show(conn)
  end

  match _ do
    send_resp(conn, 404, "Page Missing")
  end
end
